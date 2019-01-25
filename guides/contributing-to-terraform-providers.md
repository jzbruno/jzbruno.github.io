# Contributing to Terraform AWS Provider [DRAFT]

## Summary

These are some notes about contributing to Terraform providers. The AWS provider is used as an 
example but the process should be the same for other providers with minor tweaks.

Since Go uses GitHub repo naming for import statements a few extra steps are required to work with
forked repos.

## Setup and Process

- Fork original repo
- Clone original repo
- Add remote to original repo back to fork
- Work out of original repo
- Push to fork
- Create PR from fork to original repo on GitHub

## Basic structure of a provider

- Data source
- Resource
- Website Docs

## Testing

Terraform breaks tests into two classes

- Unit
- Acceptance

Tests can be run using the make file in the AWS provider repo but I like to run the go commands 
directly for fewer surprises.

### Unit

Running all unit tests is relatively fast and doesn't create real resources in the provider.

```bash
go test -v ./...
```
&NewLine;

### Acceptance

Acceptance tests actually run an apply and create resources that may cost money with the provider.
They must be enabled by setting an environment variable.

```bash
export TF_ACC=1
```
&NewLine;

For the AWS provider credentials must be provided by setting environment variables.

```bash
export AWS_ACCESS_KEY_ID=XXXX
export AWS_SECRET_ACCESS_KEY=XXXX
```
&NewLine;

It is not a good idea to run all the acceptance tests. Run a specific test

```bash
go test ./... -v -run TestAccLexBot
```
&NewLine;

Run tests using regex

```bash
go test ./... -v -run '^TestAcc.*Lex.*'
```
&NewLine;
