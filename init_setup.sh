echo [$(Date)] "Creating the envirnemnet"
echo [$(Date)] "Starting ....."
virtualenv venv
echo [$(Date)] "Virtual envirnment created success"
echo [$(Date)]"Activating the envirnemnrt"
. vevn/bin/activate
echo [$(Date)] "installing the requirements"
pip install -r requirements.txt
echo [$(Date)] "Success"
echo [$(Date)] "End"
