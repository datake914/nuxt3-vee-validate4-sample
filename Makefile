.PHONY:	start

# Build
build:
	npm run build
	sam build -b .aws-sam/build -t template.yml

# Start
start: build
	sam local start-api --template .aws-sam/build/template.yaml --debug
