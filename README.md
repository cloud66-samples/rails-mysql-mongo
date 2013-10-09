cafretest-mysql-mongo
=====================

Ruby 2.0.0p247
Rails 3.2.11

== Instalación

    bundle install

== Uso

Para poblar el mongo:

    rake create_mileys

Para poblar el mysql:

    rake create_selenas

Para hacer un "select * " en mongo

    rake find_mileys

Para hacer un "select * " en mysql

    rake find_selenas

Para controlar la cantidad de registros (por ahora) hay que modificar los task que hay definidos en /lib/tasks/tareas.rake en las tareas de creación citados anteriormente

Peace