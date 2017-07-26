# php-ecs-example
An example PHP application that can build and deploy to AWS Container Service

## Stuff it does

* Removes require-dev dependencies before package


Run locally: `php -S localhost:8090 -t public/`

Then visible at http://localhost:8090/

Tests

```bash
composer test
composer cs
```