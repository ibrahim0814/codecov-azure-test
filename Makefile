run:
	python src/main.py

test.unit:
	python -m pytest --cov=src --cov-report=xml tests/unit

test.adder:
	python -m pytest --cov=src/adder --cov-report=xml tests/unit/adder

test.subtractor:
	python -m pytest --cov=src/subtractor --cov-report=xml tests/unit/subtractor

codecov: 
	bash <(curl http://localhost/bash) -t 09104459-dbd4-4187-bf70-933c0d9bb97b -f coverage.xml -F adder -F subtractor

codecov.adder:
	bash <(curl http://localhost/bash) -t 09104459-dbd4-4187-bf70-933c0d9bb97b -f coverage.xml -F adder

codecov.subtractor:
	bash <(curl http://localhost/bash) -t 09104459-dbd4-4187-bf70-933c0d9bb97b -f coverage.xml -F subtractor