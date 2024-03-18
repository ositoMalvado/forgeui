cd /home/studio-lab-user
KERNEL_NAME="Forge_UI"
PYTHON="3.10.6"
conda create --yes --name "$KERNEL_NAME" python="$PYTHON"
conda activate "$KERNEL_NAME"
pip install --quiet ipykernel
git config --global user.name "Julian Perez"
git config --global user.email "mordecaaii@gmail.com"
git clone https://github.com/lllyasviel/stable-diffusion-webui-forge /home/studio-lab-user/stable-diffusion-webui
cd stable-diffusion-webui
pip install -r requirements.txt
pip install xformers
conda install gstreamer --yes
