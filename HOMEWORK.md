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

1. Создаю новую ВМ на клауде и подключаюсь к ней. Затем устанавливаю docker и docker compose по официальной документациию

<img width="890" alt="Снимок экрана 2024-07-21 в 20 48 00" src="https://github.com/user-attachments/assets/3f57a7bc-ce00-4a60-be40-c4048e0bae17">
<img width="742" alt="Снимок экрана 2024-07-21 в 20 48 58" src="https://github.com/user-attachments/assets/185cd6bc-c0c0-4459-818b-8d18816b6e72">

2. Создаю в opt скрипт по скачиванию с моего репозитория проекта компоуз и его запуска:

<img width="1115" alt="Снимок экрана 2024-07-21 в 20 43 56" src="https://github.com/user-attachments/assets/d3ffeffb-b43e-4b8e-a5cd-1f192cc0545e">

3. Успешно запускаю компоуз, сервисы стартуют:

<img width="609" alt="Снимок экрана 2024-07-21 в 20 53 17" src="https://github.com/user-attachments/assets/d789a8c1-7ba0-4849-804c-8d12c3a8dfbb">

4. Зпускаю http-запросы с https://check-host.net/. Как и предполагалось, сначала получаю код 200, сос второй попытки - уже 500

<img width="914" alt="Снимок экрана 2024-07-21 в 20 57 03" src="https://github.com/user-attachments/assets/8cbf032a-90e5-4de0-a56a-e123712c6c53">

5. В БД должны остаться успешные запросы. Захожу в БД и вижу успешные попытки обращения. Затем выключаю ВМ

<img width="664" alt="Снимок экрана 2024-07-21 в 20 58 53" src="https://github.com/user-attachments/assets/a86b90fd-2754-4f2d-b651-25aef6a097d6">
<img width="560" alt="Снимок экрана 2024-07-22 в 20 21 25" src="https://github.com/user-attachments/assets/d6b7cc93-185b-4c76-a229-e54ff89d9261">

# Задача 6  

1. Скачиваю образ docker pull hashicorp/terraform:latest:

<img width="944" alt="Снимок экрана 2024-07-22 в 20 27 38" src="https://github.com/user-attachments/assets/990c9107-d6f8-4e21-97c7-1c8551a1ab82">

2. Скачиваю образ dive и анализирую контейнер с terraform при помощи команды:
   docker run --rm -it \
    -v /var/run/docker.sock:/var/run/docker.sock \
    wagoodman/dive:latest hashicorp/terraform:latest
   
<img width="1217" alt="Снимок экрана 2024-07-22 в 20 43 08" src="https://github.com/user-attachments/assets/3562c8b9-c634-4a90-8324-6769595018d6">

Нахожу в интерфейсе dive файл /bin/terraform, слой на котором он был создан и номер его blob:

<img width="1440" alt="Снимок экрана 2024-07-22 в 21 39 12" src="https://github.com/user-attachments/assets/cb3f9bf0-b30e-42bf-8832-894e991946c6">

4. Сохраняю образ terraform локально в архив, распаковываю и захожу в /blobs/sha256:

<img width="1281" alt="Снимок экрана 2024-07-22 в 21 34 37" src="https://github.com/user-attachments/assets/5509a8a6-b97e-49b8-b1d0-12fae0cdf539">

5. Нахожу слой 599c6b1750a4f871ee6793fac46cde5753bd13e9fb41f4c9e452c768bc862117 в хостовой директории.  Теперь /bin/terraform скопирован.
   
<img width="547" alt="Снимок экрана 2024-07-22 в 21 37 19" src="https://github.com/user-attachments/assets/517c7273-abdb-4632-985e-820f5f2854e9">

<img width="1014" alt="Снимок экрана 2024-07-22 в 21 40 59" src="https://github.com/user-attachments/assets/479aa6db-b5fb-488c-be5a-5ceb30eb3ba1">

# Задача 6.1

1. Копирую файл /bin/terraform в хостовую директорию при помощи docker cp:


