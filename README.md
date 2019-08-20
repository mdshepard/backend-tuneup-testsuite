# Test Suite for Performance Tune-Up.

- Performance Tune-Up [assessment](https://github.com/KenzieAcademy/backend-tuneup) repository  
- Performance Tune-Up [test suite](https://github.com/KenzieAcademy/backend-tuneup-testsuite) repository


## Grading Assignments

```bash
git clone https://github.com/KenzieAcademy/backend-tuneup backend_tuneup
cd backend_tuneup
git submodule add https://github.com/KenzieAcademy/backend-tuneup-testsuite grading
cd grading
make configure
pipenv shell
make grade
```
