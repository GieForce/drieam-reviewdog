# drieam-reviewdog-action

This is a action repository for [reviewdog](https://github.com/reviewdog/reviewdog) actions with release automation.

This repo contains all the actions which are required to run in Ruby on Rails.

# Inputs

## Github token:
```yml
    description: 'GITHUB_TOKEN'
    default: '${{ github.token }}'
    required: true
```
## Flags for reviewdog:
```yml
    reviewdog_level:
    description: 'Report level for reviewdog [info,warning,error]'
    default: 'error'
```
## Flags for brakeman: 
```yml
  brakeman_input_flags:
    description: 'brakeman flags. (brakeman --quiet --format tabs <brakeman_flags>)'
    default: ''

  brakeman_version:
    description: 'version to install'
    default: '4.8.0'

  brakeman_enabled:
    description: 'Whether you want to execute this'
    default: true
```
## Flags for rubocop:
```yml
  rubocop_input_flags:
    description: 'rubocop flags. (rubocop <rubocop_flags>)'
    default: ''

  rubocop_version:
    description: 'version to install'
    default: '0.81.0'

  rubocop_rails_version:
    description: 'version to install'
    default: '2.4.2'

  rubocop_faker_version:
    description: 'version to install'
    default: '1.0.0'

  rubocop_performance_version:
    description: 'version to install'
    default: '1.5.2'

  rubocop_enabled:
    description: 'Whether you want to execute this'
    default: true
```
## Flags for eslint:
```yml
  eslint_input_flags:
    description: 'Input flags for eslint'
    default: '.'

  eslint_version: 
    description: 'version to install'
    default: '6.8.0'

  eslint_enabled:
    description: 'Whether you want to execute this'
    default: true
```
## Flags for stylelint:
```yml
  stylelint_input_flags:
    description: "Files or glob. Default: `**/*.css`.  It's same as `[input]` of stylelint."
    default: 'app/javascript/**/*.scss'

  stylelint_config:
    description: "It's same as `--config` flag of stylelint."
    default: 'stylelint.config.js'

  stylelint_version:
    description: 'version to install'
    default: '13.3.0'

  stylelint_enabled:
    description: 'Whether you want to execute this'
    default: true
```

## Usage
Notice that it's currently not possible to set the specific versions you want to use due limitations of Github Actions. 
Form more information see this [post](https://github.community/t5/GitHub-Actions/Feature-Request-Build-args-support-in-Docker-container-actions/td-p/37802). 

Todos: 

- [ ] Add update automation to automatically update dependencies.
- [ ] Specify versions of used gems by adding --buildargs to actions.yml 

### Dependencies Update Automation
This repository uses [haya14busa/action-depup](https://github.com/haya14busa/action-depup) to update
reviewdog version.

[![reviewdog depup demo](https://user-images.githubusercontent.com/3797062/73154254-170e7500-411a-11ea-8211-912e9de7c936.png)](https://github.com/reviewdog/action-template/pull/6)
