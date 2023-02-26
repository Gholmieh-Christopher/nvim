# Language Server Commands:
* Javascript & Other Variations:
    ```
	curl -fsSL https://deno.land/install.sh | sh
    ```

    In your .bashrc, put:
	```
	    export DENO_INSTALL="/home/christopherg/.deno"
	    export PATH="$DENO_INSTALL/bin:$PATH"
	```
    **Don't forget to replace the "christopherg" with the appropriate username.**

	Unfortunately, right after installing it will take time to install.
    I think after installing, you must go back into the lua/plugins/init.lua
    and run :PackerSync, also try rebooting.

* Pyright:
    ```
        sudo npm i -g pyright
    ```

* Clangd:
    ```
	sudo pacman -S clang	
    ```
* CSSLS:
    ```
	sudo npm i -g vscode-langservers-extracted
    ```

* Gopls:
    ```
	sudo pacman -S gopls
    ```

* HTML:
    ```
        sudo npm i -g vscode-langservers-extracted
    ```

* Lua:
    ```
	sudo pacman -S lua-language-server
    ```

## Plugin Manager:
* Windows Installation:
    ```
    git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
    ```

* Linux Installation:
    ```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

