Vagrant.configure("2") do |config|
  # Define o sistema operacional (Essencial para resolver o erro)
  config.vm.box = "generic/rocky9" 
  
  # Configura o redirecionamento de porta para você acessar no Windows
  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  # Indica qual script deve rodar para instalar o Apache
  config.vm.provision "shell", path: "provision.sh"

  # Define o uso do VMware como solicitado pelo Prof. Guto
  config.vm.provider "vmware_desktop" do |v|
    v.gui = true
  end
end