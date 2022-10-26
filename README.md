# Решение тестового задания
===========================
Тестовое задание для МТС.

Пункты задания:

Все пункты задания опциональны, Вы можете остановиться на любом пункте,
например, если Вы не укладываетесь по времени, просто пришлите результат.
   1. Создайте Dockerfile для приложения `app.py`;
   2. Создайте конфигурацию (на выбор) docker-compose, Docker swarm или
      Kubernetes, запускающую контейнеры:
      * приложения `app.py`;
      * Prometheus с настройкой сбора метрики приложения `app.py`;
      * Grafana;

      Вместо Prometheus и Grafana можете использовать любую систему
      мониторинга, поддерживающую вывод графиков. При необходимости, добавьте
      поддержку системы мониторинга в приложение.
   3. В системе мониторинга создайте график, отображающий количество посещений
      в секунду. Сохраните или экспортируйте его конфигурацию, если система
      мониторинга это поддерживает, или покажите конфигурацию на скриншоте.
   4. Любым удобным инструментом (например Apache bench) проверьте,
      справляется-ли приложение `app.py` с нагрузкой в 100 запросов в секунду.
      Соберите вывод тестового инструментария и снимите скриншот графика
      количества посещений, если он есть;

# Инструкция по запуску
-----------------------

# Варианты запуска и сборки

   1. При наличии Make запустить сборку через Makefile командой `make all`. 
      Так же есть возможность создать только Image приложения через Dockerfile командой `make build_image_dockerfile`
   2. Для сборки контейнера через docker-compose нужно ввести команду `docker-compose up -d` в корне репозитория.
   3. При желании так же можно создать только Image приложения через Dockerfile командой `docker build -t app.py .` в корне репозитория.

# Файлы экспорта из Grafana и скриншоты
---------------------------------------

Файл экспорта находится в репозитории по пути ./json_and_screenshots/grafanaexport/.
А скриншоты находятся по пути ./json_and_screenshots/screenshots/.
