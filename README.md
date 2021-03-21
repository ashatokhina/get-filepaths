# Get-FilePaths 🏁

Данный модуль выводит полные пути файлов и папок в консоль.

Поддерживается маскирование вывода.

## 🔽 Установка

Для установки модуля:
1. Откройте окно PowerShell: Shift + пкм → Открыть окно PowerShell здесь
2. Введите команду `Install-Module -Name Get-FilePaths -Scope CurrentUser`
3. Согласитесь с установкой новой верии NuGet (если спросит):
    Нажмите Y, а затем Enter
4. Согласитесь с установкой из ненадежного репозитория:
    Нажмите Y, а затем Enter


## 📂 Использование

После установки вам будет доступен вывод путей файлов в консоль из интересующей вас папки.

Для этого:
1. Зайдите в интересующую вас папку
2. Вызовите из этой папки окно Powershell: Shift + пкм → Открыть окно PowerShell здесь
3. Введите команду `Get-FilePaths`
4. Готово. Теперь в вашей консоли отображаются пути всех файлов (и других папок, при наличии) в данной папке.

## 🎭 Фильтрация вывода

Также можно фильтровать пути файлов, применяя к ним маски. 

1. Если нам нужны пути всех файлов, содержащих в названии `scan`, тогда используем следующую маску:
    ```powershell
    PS C:\Users\shatokhina\Pictures> Get-FilePaths -Filemask *scan*
    ```
    Вот какие пути мы получим с данной маской:
    ```powershell
    C:\Users\shatokhina\Pictures\scan_125922.png
    C:\Users\shatokhina\Pictures\new_scan_113529.png
    C:\Users\shatokhina\Pictures\old_scan_124817.png
    C:\Users\shatokhina\Pictures\new_scan_154981.jpg
    ```
2. Если нам нужны пути всех файлов, начинающихся с `scan`, тогда используем следующую маску:
    ```powershell
    PS C:\Users\shatokhina\Pictures> Get-FilePaths -Filemask scan*
    ```
    Вот какие пути мы получим с данной маской:
    ```powershell
    C:\Users\shatokhina\Pictures\scan_125922.png
    ```
    Остальные два варианта не попадают под маску.

3. Если нам нужны пути всех файлов, с расширением `.png`, тогда используем следующую маску:
    ```powershell
    PS C:\Users\shatokhina\Pictures> Get-FilePaths -Filemask *.png
    ```
    Вот какие пути мы получим с данной маской:
    ```powershell
    C:\Users\shatokhina\Pictures\scan_125922.png
    C:\Users\shatokhina\Pictures\new_scan_113529.png
    C:\Users\shatokhina\Pictures\old_scan_124817.png
    C:\Users\shatokhina\Pictures\house_124817.png
    ```
    
Как видите, использование масок очень несложно и упрощает жизнь 🤩