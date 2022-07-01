# Nuxt 3 Minimal Starter

Look at the [nuxt 3 documentation](https://v3.nuxtjs.org) to learn more.

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install --shamefully-hoist
```

## Development Server
#### Pre Requirement

* AWS SAM CLI  
https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html
* Docker

Run the application in the AWS Lambda with AWS SAM Local:  

```bash
make start
```

## Production

Deploy the application to the AWS Lambda:

```bash
sam package --s3-bucket ${YourBucketName} --template .aws-sam/build/template.yaml --output-template-file .aws-sam/build/template.out.yaml
sam deploy --debug --template-file .aws-sam/build/template.out.yaml --stack-name ${StackName} --capabilities CAPABILITY_IAM
```
