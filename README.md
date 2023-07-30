# all-about-yourself
A project based on your own social media data

## Requirements ✅

* [Install Docker](https://www.docker.com/)
* [Download your Facebook data](https://www.facebook.com/help/212802592074644/?helpref=uf_share)

## Setup 👷

### Extract your Facebook data 📦

Create a new empty directory somewhere sensible on your machine. This will contain your Facebook data.

Once you've downloaded your Facebook data, extract the zip files into your newly created Facebook data directory.

### Download the project 🔜

If you have [git](https://git-scm.com/) installed, you can clone the repository with the following command:
```
git clone https://github.com/mitchealex1/all-about-yourself.git
```

Alternatively, you can [download the project files](https://docs.github.com/en/repositories/working-with-files/using-files/downloading-source-code-archives#downloading-source-code-archives) from the [GitHub repository](https://github.com/mitchealex1/all-about-yourself). Once this is downloaded, extract the zip file into a sensible directory.

### Get ready to rumble 🥊

Open a terminal/console on your machine. 

#### Windows 🪟

Open Command Prompt. Keep this window open, we'll need it to run the project.

Run the following commands to set some config, replace contents in <...> with appropriate values:
```
set POSTGRES_ADMIN_PASSWORD='<password>'
set POSTGRES_LOAD_ROLE_PASSWORD='<password>'
set POSTGRES_TRANSFORM_ROLE_PASSWORD='<password>'
set POSTGRES_VIS_ROLE_PASSWORD='<password>'
set DATA_DIRECTORY_PATH='<path/to/data/directory>'
```

#### Mac 🍎

Open Terminal. Keep this window open, we'll need it to run the project.

Run the following commands to set some config, replace contents in <...> with appropriate values:
```
# Set the environment variables
export POSTGRES_ADMIN_PASSWORD='<password>'
export POSTGRES_LOAD_ROLE_PASSWORD='<password>'
export POSTGRES_TRANSFORM_ROLE_PASSWORD='<password>'
export POSTGRES_VIS_ROLE_PASSWORD='<password>'
export DATA_DIRECTORY_PATH='<path/to/data/directory>'
```

### Running the project 🏃‍♀️

This is it!

Navigate to the directory that you put the project in:
```
cd /path/to/project/
```

Run the following command to build the project:
```
docker compose up -d
```