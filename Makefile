
.DEFAULT_GOAL := test 

 $(info OS is $(OS))


install: requirements.txt |
	python -m pip install --upgrade pip  
	pip install -r requirements.txt

test: #install  
	python -m pytest -vv ./tests/  

 

run:
	python app.py 
 
format: |
	python -m black ./tests/*.py  
	python -m black ./src/   
	python -m black *.py 

lint: |
	pylint --disable=R,C ./src/
	pylint --disable=R,C ./*.py 
	
	 

all:  install format lint test 
	$(info OS is $(OS))



.PHONY:	clean install format	test clean

