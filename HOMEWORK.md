## Домашнее задание к занятию 5 «Практическое применение Docker»

Проверил версию compose. Установлен верно, так как использую Docker Desktop

<img width="771" alt="Снимок экрана 2024-07-21 в 15 19 36" src="https://github.com/user-attachments/assets/c179e897-9083-4c5a-9a20-7d16aeaff12c">

# Задача 1

1.Создал Dockerfile.python с правильной схемой слоев. Добавил dockerignore.

<img width="772" alt="Снимок экрана 2024-07-21 в 15 25 14" src="https://github.com/user-attachments/assets/8087aca7-b9c9-4a41-9e1f-f331032cc503">

2. Собрал приложение в образ успешно:

<img width="1097" alt="Снимок экрана 2024-07-21 в 15 26 11" src="https://github.com/user-attachments/assets/12b93241-c8a4-44fa-92e2-c9a2055a31ef">

3. Для проерки работоспособности контейнера, запустил его с выводом в консоль ошибок в Docker Desktop. Приложение работает и пытается подключиться к несуществующей БД:

<img width="1010" alt="Снимок экрана 2024-07-21 в 15 28 21" src="https://github.com/user-attachments/assets/91f8a27e-beed-4615-ac78-35154ecbc618">

# Задача 2

1. Создал свое registry на YCloud и создал конфигурацию для докер:

<img width="1046" alt="Снимок экрана 2024-07-21 в 15 52 05" src="https://github.com/user-attachments/assets/b39d6b64-c565-4fc0-87f3-0f411f0520b6">

2. Задал тег для образа с приложением и загрузил в регистри клауда:

<img width="1215" alt="Снимок экрана 2024-07-21 в 15 53 57" src="https://github.com/user-attachments/assets/38a8fcf8-b514-4122-a343-d881c611c4df">

3. Провел сканирование образа на уязвимости в клауде и скачал отчет сканирования:

<img width="1065" alt="Снимок экрана 2024-07-21 в 15 55 22" src="https://github.com/user-attachments/assets/f5d98755-1c7c-4486-bbb3-98e55f6914f0">

<img width="1008" alt="Снимок экрана 2024-07-21 в 15 56 10" src="https://github.com/user-attachments/assets/875090fa-2788-4d25-80fe-015d14dd6c78">






