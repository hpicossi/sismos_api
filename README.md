<p align="center">
  <img src="https://cdn-icons-png.flaticon.com/512/6295/6295417.png" width="100" />
</p>
<p align="center">
    <h1 align="center">SISMOS_API</h1>
</p>
<p align="center">
    <em><code>► INSERT-TEXT-HERE</code></em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/hpicossi/sismos_api?style=flat&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/hpicossi/sismos_api?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/hpicossi/sismos_api?style=flat&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/hpicossi/sismos_api?style=flat&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/badge/JavaScript-F7DF1E.svg?style=flat&logo=JavaScript&logoColor=black" alt="JavaScript">
	<img src="https://img.shields.io/badge/HTML5-E34F26.svg?style=flat&logo=HTML5&logoColor=white" alt="HTML5">
	<img src="https://img.shields.io/badge/Ruby-CC342D.svg?style=flat&logo=Ruby&logoColor=white" alt="Ruby">
	<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat&logo=YAML&logoColor=white" alt="YAML">
	<img src="https://img.shields.io/badge/Axios-5A29E4.svg?style=flat&logo=Axios&logoColor=white" alt="Axios">
	<br>
	<img src="https://img.shields.io/badge/Vue.js-4FC08D.svg?style=flat&logo=vuedotjs&logoColor=white" alt="Vue.js">
	<img src="https://img.shields.io/badge/ESLint-4B32C3.svg?style=flat&logo=ESLint&logoColor=white" alt="ESLint">
	<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=flat&logo=Docker&logoColor=white" alt="Docker">
	<img src="https://img.shields.io/badge/JSON-000000.svg?style=flat&logo=JSON&logoColor=white" alt="JSON">
</p>
<hr>

##  Quick Links

> - [ Overview](#-overview)
> - [ Features](#-features)
> - [ Repository Structure](#-repository-structure)
> - [ Modules](#-modules)
> - [ Getting Started](#-getting-started)
>   - [ Installation](#-installation)
>   - [ Running sismos_api](#-running-sismos_api)
>   - [ Tests](#-tests)
> - [ Project Roadmap](#-project-roadmap)
> - [ Contributing](#-contributing)
> - [ License](#-license)
> - [ Acknowledgments](#-acknowledgments)

---

##  Overview

<code>► INSERT-TEXT-HERE</code>

---

##  Features

<code>► INSERT-TEXT-HERE</code>

---

##  Repository Structure

```sh
└── sismos_api/
    ├── Back-End
    │   ├── .dockerignore
    │   ├── .gitattributes
    │   ├── .gitignore
    │   ├── .ruby-version
    │   ├── Dockerfile
    │   ├── Gemfile
    │   ├── Gemfile.lock
    │   ├── README.md
    │   ├── Rakefile
    │   ├── app
    │   │   ├── channels
    │   │   │   └── application_cable
    │   │   │       ├── channel.rb
    │   │   │       └── connection.rb
    │   │   ├── controllers
    │   │   │   ├── application_controller.rb
    │   │   │   ├── comments_controller.rb
    │   │   │   ├── concerns
    │   │   │   │   └── .keep
    │   │   │   └── features_controller.rb
    │   │   ├── jobs
    │   │   │   └── application_job.rb
    │   │   ├── mailers
    │   │   │   └── application_mailer.rb
    │   │   ├── models
    │   │   │   ├── application_record.rb
    │   │   │   ├── comment.rb
    │   │   │   ├── concerns
    │   │   │   │   └── .keep
    │   │   │   └── feature.rb
    │   │   └── views
    │   │       └── layouts
    │   │           ├── mailer.html.erb
    │   │           └── mailer.text.erb
    │   ├── bin
    │   │   ├── bundle
    │   │   ├── bundle.cmd
    │   │   ├── docker-entrypoint
    │   │   ├── rails
    │   │   ├── rake
    │   │   └── setup
    │   ├── config
    │   │   ├── application.rb
    │   │   ├── boot.rb
    │   │   ├── cable.yml
    │   │   ├── credentials.yml.enc
    │   │   ├── database.yml
    │   │   ├── environment.rb
    │   │   ├── environments
    │   │   │   ├── development.rb
    │   │   │   ├── production.rb
    │   │   │   └── test.rb
    │   │   ├── initializers
    │   │   │   ├── cors.rb
    │   │   │   ├── filter_parameter_logging.rb
    │   │   │   └── inflections.rb
    │   │   ├── locales
    │   │   │   └── en.yml
    │   │   ├── puma.rb
    │   │   ├── routes.rb
    │   │   └── storage.yml
    │   ├── config.ru
    │   ├── db
    │   │   ├── migrate
    │   │   │   ├── 20240408014026_create_features.rb
    │   │   │   └── 20240408014215_create_comments.rb
    │   │   ├── schema.rb
    │   │   └── seeds.rb
    │   ├── lib
    │   │   └── tasks
    │   │       └── .keep
    │   ├── log
    │   │   └── .keep
    │   ├── package-lock.json
    │   ├── package.json
    │   ├── public
    │   │   └── robots.txt
    │   ├── storage
    │   │   └── .keep
    │   ├── test
    │   │   ├── channels
    │   │   │   └── application_cable
    │   │   │       └── connection_test.rb
    │   │   ├── controllers
    │   │   │   ├── .keep
    │   │   │   ├── comments_controller_test.rb
    │   │   │   └── features_controller_test.rb
    │   │   ├── fixtures
    │   │   │   ├── comments.yml
    │   │   │   ├── features.yml
    │   │   │   └── files
    │   │   │       └── .keep
    │   │   ├── integration
    │   │   │   └── .keep
    │   │   ├── mailers
    │   │   │   └── .keep
    │   │   ├── models
    │   │   │   ├── .keep
    │   │   │   ├── comment_test.rb
    │   │   │   └── feature_test.rb
    │   │   └── test_helper.rb
    │   ├── tmp
    │   │   ├── .keep
    │   │   ├── pids
    │   │   │   └── .keep
    │   │   └── storage
    │   │       └── .keep
    │   └── vendor
    │       └── .keep
    └── Front-End
        ├── .gitignore
        ├── README.md
        ├── babel.config.js
        ├── jsconfig.json
        ├── package-lock.json
        ├── package.json
        ├── public
        │   ├── favicon.ico
        │   └── index.html
        ├── src
        │   ├── App.vue
        │   ├── assets
        │   │   └── logo.png
        │   ├── components
        │   │   ├── HelloWorld.vue
        │   │   └── SismicData.vue
        │   └── main.js
        └── vue.config.js
```

---

##  Modules

<details closed><summary>Front-End</summary>

| File                                                                                                | Summary                         |
| ---                                                                                                 | ---                             |
| [jsconfig.json](https://github.com/hpicossi/sismos_api/blob/master/Front-End/jsconfig.json)         | <code>► INSERT-TEXT-HERE</code> |
| [vue.config.js](https://github.com/hpicossi/sismos_api/blob/master/Front-End/vue.config.js)         | <code>► INSERT-TEXT-HERE</code> |
| [package.json](https://github.com/hpicossi/sismos_api/blob/master/Front-End/package.json)           | <code>► INSERT-TEXT-HERE</code> |
| [babel.config.js](https://github.com/hpicossi/sismos_api/blob/master/Front-End/babel.config.js)     | <code>► INSERT-TEXT-HERE</code> |
| [package-lock.json](https://github.com/hpicossi/sismos_api/blob/master/Front-End/package-lock.json) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Front-End.public</summary>

| File                                                                                         | Summary                         |
| ---                                                                                          | ---                             |
| [index.html](https://github.com/hpicossi/sismos_api/blob/master/Front-End/public/index.html) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Front-End.src</summary>

| File                                                                                | Summary                         |
| ---                                                                                 | ---                             |
| [main.js](https://github.com/hpicossi/sismos_api/blob/master/Front-End/src/main.js) | <code>► INSERT-TEXT-HERE</code> |
| [App.vue](https://github.com/hpicossi/sismos_api/blob/master/Front-End/src/App.vue) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Front-End.src.components</summary>

| File                                                                                                         | Summary                         |
| ---                                                                                                          | ---                             |
| [HelloWorld.vue](https://github.com/hpicossi/sismos_api/blob/master/Front-End/src/components/HelloWorld.vue) | <code>► INSERT-TEXT-HERE</code> |
| [SismicData.vue](https://github.com/hpicossi/sismos_api/blob/master/Front-End/src/components/SismicData.vue) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End</summary>

| File                                                                                               | Summary                         |
| ---                                                                                                | ---                             |
| [Gemfile](https://github.com/hpicossi/sismos_api/blob/master/Back-End/Gemfile)                     | <code>► INSERT-TEXT-HERE</code> |
| [.ruby-version](https://github.com/hpicossi/sismos_api/blob/master/Back-End/.ruby-version)         | <code>► INSERT-TEXT-HERE</code> |
| [Dockerfile](https://github.com/hpicossi/sismos_api/blob/master/Back-End/Dockerfile)               | <code>► INSERT-TEXT-HERE</code> |
| [Gemfile.lock](https://github.com/hpicossi/sismos_api/blob/master/Back-End/Gemfile.lock)           | <code>► INSERT-TEXT-HERE</code> |
| [package.json](https://github.com/hpicossi/sismos_api/blob/master/Back-End/package.json)           | <code>► INSERT-TEXT-HERE</code> |
| [Rakefile](https://github.com/hpicossi/sismos_api/blob/master/Back-End/Rakefile)                   | <code>► INSERT-TEXT-HERE</code> |
| [config.ru](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config.ru)                 | <code>► INSERT-TEXT-HERE</code> |
| [package-lock.json](https://github.com/hpicossi/sismos_api/blob/master/Back-End/package-lock.json) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.public</summary>

| File                                                                                        | Summary                         |
| ---                                                                                         | ---                             |
| [robots.txt](https://github.com/hpicossi/sismos_api/blob/master/Back-End/public/robots.txt) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.tmp</summary>

| File                                                                           | Summary                         |
| ---                                                                            | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/tmp/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.tmp.pids</summary>

| File                                                                                | Summary                         |
| ---                                                                                 | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/tmp/pids/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.tmp.storage</summary>

| File                                                                                   | Summary                         |
| ---                                                                                    | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/tmp/storage/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.bin</summary>

| File                                                                                                   | Summary                         |
| ---                                                                                                    | ---                             |
| [rake](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/rake)                           | <code>► INSERT-TEXT-HERE</code> |
| [bundle](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/bundle)                       | <code>► INSERT-TEXT-HERE</code> |
| [setup](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/setup)                         | <code>► INSERT-TEXT-HERE</code> |
| [docker-entrypoint](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/docker-entrypoint) | <code>► INSERT-TEXT-HERE</code> |
| [rails](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/rails)                         | <code>► INSERT-TEXT-HERE</code> |
| [bundle.cmd](https://github.com/hpicossi/sismos_api/blob/master/Back-End/bin/bundle.cmd)               | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.config</summary>

| File                                                                                                          | Summary                         |
| ---                                                                                                           | ---                             |
| [cable.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/cable.yml)                     | <code>► INSERT-TEXT-HERE</code> |
| [storage.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/storage.yml)                 | <code>► INSERT-TEXT-HERE</code> |
| [environment.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/environment.rb)           | <code>► INSERT-TEXT-HERE</code> |
| [application.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/application.rb)           | <code>► INSERT-TEXT-HERE</code> |
| [credentials.yml.enc](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/credentials.yml.enc) | <code>► INSERT-TEXT-HERE</code> |
| [database.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/database.yml)               | <code>► INSERT-TEXT-HERE</code> |
| [routes.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/routes.rb)                     | <code>► INSERT-TEXT-HERE</code> |
| [puma.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/puma.rb)                         | <code>► INSERT-TEXT-HERE</code> |
| [boot.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/boot.rb)                         | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.config.environments</summary>

| File                                                                                                             | Summary                         |
| ---                                                                                                              | ---                             |
| [production.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/environments/production.rb)   | <code>► INSERT-TEXT-HERE</code> |
| [test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/environments/test.rb)               | <code>► INSERT-TEXT-HERE</code> |
| [development.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/environments/development.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.config.locales</summary>

| File                                                                                        | Summary                         |
| ---                                                                                         | ---                             |
| [en.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/locales/en.yml) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.config.initializers</summary>

| File                                                                                                                                       | Summary                         |
| ---                                                                                                                                        | ---                             |
| [filter_parameter_logging.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/initializers/filter_parameter_logging.rb) | <code>► INSERT-TEXT-HERE</code> |
| [inflections.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/initializers/inflections.rb)                           | <code>► INSERT-TEXT-HERE</code> |
| [cors.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/config/initializers/cors.rb)                                         | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.vendor</summary>

| File                                                                              | Summary                         |
| ---                                                                               | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/vendor/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.db</summary>

| File                                                                                  | Summary                         |
| ---                                                                                   | ---                             |
| [seeds.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/db/seeds.rb)   | <code>► INSERT-TEXT-HERE</code> |
| [schema.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/db/schema.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.db.migrate</summary>

| File                                                                                                                                          | Summary                         |
| ---                                                                                                                                           | ---                             |
| [20240408014215_create_comments.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/db/migrate/20240408014215_create_comments.rb) | <code>► INSERT-TEXT-HERE</code> |
| [20240408014026_create_features.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/db/migrate/20240408014026_create_features.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.storage</summary>

| File                                                                               | Summary                         |
| ---                                                                                | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/storage/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test</summary>

| File                                                                                              | Summary                         |
| ---                                                                                               | ---                             |
| [test_helper.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/test_helper.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.integration</summary>

| File                                                                                        | Summary                         |
| ---                                                                                         | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/integration/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.channels.application_cable</summary>

| File                                                                                                                                 | Summary                         |
| ---                                                                                                                                  | ---                             |
| [connection_test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/channels/application_cable/connection_test.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.models</summary>

| File                                                                                                       | Summary                         |
| ---                                                                                                        | ---                             |
| [comment_test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/models/comment_test.rb) | <code>► INSERT-TEXT-HERE</code> |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/models/.keep)                     | <code>► INSERT-TEXT-HERE</code> |
| [feature_test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/models/feature_test.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.controllers</summary>

| File                                                                                                                                    | Summary                         |
| ---                                                                                                                                     | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/controllers/.keep)                                             | <code>► INSERT-TEXT-HERE</code> |
| [comments_controller_test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/controllers/comments_controller_test.rb) | <code>► INSERT-TEXT-HERE</code> |
| [features_controller_test.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/controllers/features_controller_test.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.fixtures</summary>

| File                                                                                                   | Summary                         |
| ---                                                                                                    | ---                             |
| [features.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/fixtures/features.yml) | <code>► INSERT-TEXT-HERE</code> |
| [comments.yml](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/fixtures/comments.yml) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.fixtures.files</summary>

| File                                                                                           | Summary                         |
| ---                                                                                            | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/fixtures/files/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.test.mailers</summary>

| File                                                                                    | Summary                         |
| ---                                                                                     | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/test/mailers/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.log</summary>

| File                                                                           | Summary                         |
| ---                                                                            | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/log/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.lib.tasks</summary>

| File                                                                                 | Summary                         |
| ---                                                                                  | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/lib/tasks/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.jobs</summary>

| File                                                                                                          | Summary                         |
| ---                                                                                                           | ---                             |
| [application_job.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/jobs/application_job.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.channels.application_cable</summary>

| File                                                                                                                      | Summary                         |
| ---                                                                                                                       | ---                             |
| [channel.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/channels/application_cable/channel.rb)       | <code>► INSERT-TEXT-HERE</code> |
| [connection.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/channels/application_cable/connection.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.models</summary>

| File                                                                                                                  | Summary                         |
| ---                                                                                                                   | ---                             |
| [feature.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/models/feature.rb)                       | <code>► INSERT-TEXT-HERE</code> |
| [application_record.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/models/application_record.rb) | <code>► INSERT-TEXT-HERE</code> |
| [comment.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/models/comment.rb)                       | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.models.concerns</summary>

| File                                                                                           | Summary                         |
| ---                                                                                            | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/models/concerns/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.controllers</summary>

| File                                                                                                                               | Summary                         |
| ---                                                                                                                                | ---                             |
| [comments_controller.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/controllers/comments_controller.rb)       | <code>► INSERT-TEXT-HERE</code> |
| [application_controller.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/controllers/application_controller.rb) | <code>► INSERT-TEXT-HERE</code> |
| [features_controller.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/controllers/features_controller.rb)       | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.controllers.concerns</summary>

| File                                                                                                | Summary                         |
| ---                                                                                                 | ---                             |
| [.keep](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/controllers/concerns/.keep) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.mailers</summary>

| File                                                                                                                   | Summary                         |
| ---                                                                                                                    | ---                             |
| [application_mailer.rb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/mailers/application_mailer.rb) | <code>► INSERT-TEXT-HERE</code> |

</details>

<details closed><summary>Back-End.app.views.layouts</summary>

| File                                                                                                             | Summary                         |
| ---                                                                                                              | ---                             |
| [mailer.html.erb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/views/layouts/mailer.html.erb) | <code>► INSERT-TEXT-HERE</code> |
| [mailer.text.erb](https://github.com/hpicossi/sismos_api/blob/master/Back-End/app/views/layouts/mailer.text.erb) | <code>► INSERT-TEXT-HERE</code> |

</details>

---

##  Getting Started

***Requirements***

Ensure you have the following dependencies installed on your system:

* **Ruby**: `version "3.2.3"`

###  Installation

1. Clone the sismos_api repository:

```sh
git clone https://github.com/hpicossi/sismos_api
```

2. Change to the project directory:

```sh
cd sismos_api
```

3. Install the dependencies:

```sh
bundle install
```

###  Running sismos_api

Use the following command to run sismos_api:

```sh
ruby main.rb
```

###  Tests

To execute tests, run:

```sh
rspec
```

---

##  Project Roadmap

- [X] `► INSERT-TASK-1`
- [ ] `► INSERT-TASK-2`
- [ ] `► ...`

---

##  Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Submit Pull Requests](https://github.com/hpicossi/sismos_api/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github.com/hpicossi/sismos_api/discussions)**: Share your insights, provide feedback, or ask questions.
- **[Report Issues](https://github.com/hpicossi/sismos_api/issues)**: Submit bugs found or log feature requests for Sismos_api.

<details closed>
    <summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your GitHub account.
2. **Clone Locally**: Clone the forked repository to your local machine using a Git client.
   ```sh
   git clone https://github.com/hpicossi/sismos_api
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to GitHub**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.

Once your PR is reviewed and approved, it will be merged into the main branch.

</details>

---

##  License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

##  Acknowledgments

- List any resources, contributors, inspiration, etc. here.

[**Return**](#-quick-links)

---
