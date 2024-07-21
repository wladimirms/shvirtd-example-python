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

# Задача 3

1. Написал compose файл для сборки проекта с использованием всех требований:

<img width="375" alt="Снимок экрана 2024-07-21 в 18 47 21" src="https://github.com/user-attachments/assets/b66bdd43-f531-4ee4-84ed-7b2a73368b44">

2. Успешно запускаю компоуз и создаю 4 контейнера, но приложение пробрасываю на 8091 порт, так как 8090 занят:

<img width="1271" alt="Снимок экрана 2024-07-21 в 18 50 49" src="https://github.com/user-attachments/assets/246b7f47-f7eb-4d5b-bb73-5b88446482a6">
<img width="1416" alt="Снимок экрана 2024-07-21 в 18 51 35" src="https://github.com/user-attachments/assets/74fe49e4-a200-4a8a-a103-fda06ff8c193">
<img width="1219" alt="Снимок экрана 2024-07-21 в 18 52 55" src="https://github.com/user-attachments/assets/428a5c49-4a8b-4957-b57b-11de805ca27a">

3. Делаю запрос на curl -L http://127.0.0.1:8091. Получаю ответ, но ip - None. Попытки исправить ситуацию не помогли. Не понимаю в чем ошибка.

4. Захошу в контейнер вручную, так как через exec просто так не пускает.
<img width="842" alt="Снимок экрана 2024-07-21 в 18 57 08" src="https://github.com/user-attachments/assets/3834e6fd-5544-4048-a7f0-fc1592490e88">
<img width="667" alt="Снимок экрана 2024-07-21 в 18 58 54" src="https://github.com/user-attachments/assets/066125f8-c115-4138-bc9f-664dccf16b01">

Приложение успешно отработало, кроме определения ip.

5. Гашу проект

<img width="819" alt="Снимок экрана 2024-07-21 в 19 00 11" src="https://github.com/user-attachments/assets/5819cb41-5a1a-4c7c-baab-a7da59655823">

# Задача 4



