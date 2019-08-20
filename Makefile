# Command shortcuts
clean:
	rm -f ../.python-version
	rm -f ../__init__.py
	rm -f ../tox.ini
	rm -f ./reports/*.html
	rm -f ./reports/*.json
	rm -f ./reports/*.log
	rm -f ./reports/*.xml
	rm -rf ../.tox
	rm -rf ./reports/assets
	rm -rf __pycache__

configure:
	@echo 'Setting up project for grading'
	make configure-dependencies
	make configure-interpreters
	make configure-repository

configure-dependencies:
	cd .. && pipenv install --dev -r grading/requirements.in && \
	pip install git+https://gitlab.com/kenzie-academy/kenzie-programming-assessment/kpa-testsuite-helpers.git


configure-interpreters:
	pyenv install -s 2.7.15
	pyenv install -s 3.0.1
	pyenv install -s 3.1.5
	pyenv install -s 3.2.6
	pyenv install -s 3.3.7
	pyenv install -s 3.4.9
	pyenv install -s 3.5.6
	pyenv install -s 3.6.8
	pyenv install -s 3.7.2
	pyenv global 2.7.15 3.0.1 3.1.5 3.2.6 3.3.7 3.4.9 3.5.6 3.6.8 3.7.2

configure-repository:
	touch ../__init__.py
	cp ./tox.stub ../tox.ini
	cp ./.python-version.stub ../.python-version

grade:
	cd ..  && tox --result-json ./grading/reports/tox_report.json
