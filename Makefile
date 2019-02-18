run:
	python src/main.py

test.unit:
	python -m pytest --cov=src --junitxml=pytest-report.xml --cov-report=xml tests/unit

test.adder:
	python -m pytest --cov=src/adder --cov-report=xml tests/unit/adder

test.subtractor:
	python -m pytest --cov=src/subtractor --cov-report=xml tests/unit/subtractor

codecov: 
	bash <(curl http://localhost/bash) -t 0b60fc99-e7f1-4b29-8e76-a03091a48f18 -f coverage.xml -F adder -F subtractor
	# bash <(curl http://http://ccmigrate-sg1seod6.ngrok.io/bash) -t 91d320d4-75c9-47a0-8751-326a542f2cfc -f coverage.xml -F adder -F subtractor

codecov.adder:
	bash <(curl http://localhost/bash) -t 0b60fc99-e7f1-4b29-8e76-a03091a48f18 -f coverage.xml -F adder

codecov.subtractor:
	bash <(curl http://localhost/bash) -t 0b60fc99-e7f1-4b29-8e76-a03091a48f18 -f coverage.xml -F subtractor

	#1ee13573-c067-40e6-972b-f7469e276721