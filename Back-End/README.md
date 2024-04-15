# Backend Challenge

¡Bienvenido al desafío técnico de backend! En este proyecto hemos desarrollado una aplicación en Ruby on Rails para obtener y persistir información relacionada con datos sismológicos en el mundo. Este README proporciona una guía sobre la estructura y funcionalidades del backend desarrollado.

## Tecnologías Utilizadas

- Ruby on Rails
- PostgreSQL (como base de datos)

## Estructura del Proyecto

El proyecto está estructurado de la siguiente manera:

- `app`: Contiene la lógica de la aplicación.
  - `controllers`: Controladores de la API.
  - `models`: Modelos de la base de datos.
- `db`: Migraciones de la base de datos.
- `config`: Configuraciones del proyecto.

## Obtención y Persistencia de Datos

Implementamos una tarea (Task) que se ejecuta periódicamente para obtener información sismológica desde el sitio USGS (earthquake.usgs.gov). Utilizamos la biblioteca `HTTParty` para hacer solicitudes HTTP y `ActiveRecord` para interactuar con la base de datos. Los datos se obtienen en formato GeoJSON y se persisten en la base de datos PostgreSQL siguiendo las especificaciones del desafío.

## API REST

Desarrollamos una API REST con dos endpoints para exponer y modificar los datos obtenidos:

1. **Obtener lista de features (GET)**: Este endpoint devuelve una lista de features en formato JSON, que pueden filtrarse por magnitud y paginarse según los parámetros especificados.

2. **Crear un comentario asociado a un feature (POST)**: Permite crear un comentario relacionado con un feature específico. Validamos que el campo `body` no esté vacío antes de persistir el comentario.

## Ejecución del Proyecto

Para ejecutar el proyecto en tu máquina local, sigue estos pasos:

1. Clona este repositorio.
2. Instala las dependencias con `bundle install`.
3. Configura la base de datos con `rails db:create` y `rails db:migrate`.
4. Ejecuta el servidor local con `rails server`.

## Pruebas

Implementamos pruebas unitarias y de integración utilizando `RSpec`. Puedes ejecutar las pruebas con el comando `rspec`.

¡Esperamos que esta información te sea útil para entender el backend desarrollado! Si tienes alguna pregunta o sugerencia, no dudes en ponerte en contacto con nosotros.
