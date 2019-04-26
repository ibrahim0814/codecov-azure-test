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
	# bash <(curl http://ccmigrate-sg1seod6.ngrok.io/bash) -t f7e8648c-31ff-4022-9185-e49ed1ab7e54 -f coverage.xml -F adder -F subtractor
	#bash <(curl https://codecov.io/bash) -t 04221e35-fad9-413d-b8be-a03e421c23b4 -f coverage.xml -F adder -F subtractor

codecov.adder:
	bash <(curl http://localhost/bash) -t 0b60fc99-e7f1-4b29-8e76-a03091a48f18 -f coverage.xml -F adder

codecov.subtractor:
	bash <(curl http://localhost/bash) -t 0b60fc99-e7f1-4b29-8e76-a03091a48f18 -f coverage.xml -F subtractor

	#1ee13573-c067-40e6-972b-f7469e276721