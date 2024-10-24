pre-commit-laravel
==================
A [pre-commit](https://pre-commit.com/) hook for [Laravel](https://laravel.com/).

This adds support for running [Laravel Pint](https://laravel.com/docs/10.x/pint) and 
[Artisan Tests](https://laravel.com/docs/10.x/testing#running-tests) as pre-commit hooks in your Laravel project. 

Usage
-----

### Using Laravel Pint with pre-commit
Add this to your `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/matchory/pre-commit-laravel
  rev: v1.0.1
  hooks:
    - id: laravel-pint
```

Or, to disable automatic fixing:
```yaml
- repo: https://github.com/matchory/pre-commit-laravel
  rev: v1.0.1
  hooks:
    - id: laravel-pint
      args: ["--test"]
```

### Using Artisan tests with pre-commit
Add this to your `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/matchory/pre-commit-laravel
  rev: v1.0.1
  hooks:
    - id: laravel-tests
```

Or, to enable parallel testing:
```yaml
- repo: https://github.com/matchory/pre-commit-laravel
  rev: v1.0.1
  hooks:
    - id: laravel-tests
      args: ["--parallel"]
```
Note that this requires the [`brianium/paratest` package](https://packagist.org/packages/brianium/paratest) to be 
installed in your project.

License
-------
MIT
