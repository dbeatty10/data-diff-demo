
## Install

Create a virtual environment and install dependencies using one of these methods (click to expand):

<details>
<summary>POSIX bash/zsh</summary>

```shell
python3 -m venv env
source env/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt --use-pep517
source env/bin/activate
```

</details>

<details>
<summary>POSIX fish</summary>

```shell
python3 -m venv env
source env/bin/activate.fish
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt --use-pep517
source env/bin/activate.fish
```
</details>

<details>
<summary>POSIX csh/tcsh</summary>

```shell
python3 -m venv env
source env/bin/activate.csh
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt --use-pep517
source env/bin/activate.csh
```
</details>

<details>
<summary>POSIX PowerShell Core</summary>

```shell
python3 -m venv env
env/bin/Activate.ps1
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt --use-pep517
env/bin/Activate.ps1
```
</details>

<details>
<summary>Windows cmd.exe</summary>

```shell
python -m venv env
env\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r requirements.txt --use-pep517
env\Scripts\activate.bat
```
</details>

<details>
<summary>Windows PowerShell</summary>

```shell
python -m venv env
env\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt --use-pep517
env\Scripts\Activate.ps1
```
</details>
