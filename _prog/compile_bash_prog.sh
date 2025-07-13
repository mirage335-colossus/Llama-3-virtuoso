_compile_bash_deps_prog() {
	if [[ "$1" == "virtuoso" ]]
	then
		_deps_dev_ai
		
		_deps_dev_heavy
		_deps_dev_heavy_asciinema
		#_deps_dev_heavy_atom
		_deps_dev
		_deps_dev_buildOps
		
		#_deps_cloud_heavy
		
		
		
		#_deps_mount
		
		_deps_notLean
		#_deps_os_x11
		
		#_deps_java
		
		
		#_deps_x11
		#_deps_image
		
		#_deps_virt
		#_deps_virt_thick

		#_deps_virt_translation_gui
		
		#_deps_chroot
		#_deps_bios
		#_deps_qemu
		#_deps_vbox
		_deps_docker
		#_deps_wine
		#_deps_dosbox
		#_deps_msw
		_deps_fakehome
		_deps_abstractfs

		_deps_virtPython
		
		_deps_generic
		
		_deps_python
		#_deps_haskell
		
		_deps_ai
		_deps_ai_shortcuts
		_deps_ai_augment

		#_deps_ai
		_deps_ai_dataset
		_deps_ai_semanticAssist
		_deps_ai_knowledge

		_deps_factory_shortcuts
		_deps_factory_shortcuts_ops

		_deps_server
		
		_deps_calculators
		
		_deps_channel
		
		_deps_queue
		_deps_metaengine
		
		_deps_git
		#_deps_bup
		_deps_repo
		
		#_deps_search
		
		#_deps_cloud
		#_deps_cloud_self
		#_deps_cloud_build

		_deps_github
		
		_deps_distro
		_deps_getMinimal
		_deps_get_npm
		#_deps_getVeracrypt
		
		#_deps_blockchain
		
		#_deps_command
		#_deps_synergy
		
		_deps_hardware
		#_deps_measurement
		_deps_x220t
		_deps_w540
		_deps_gpd
		_deps_peripherial
		
		#_deps_user
		
		_deps_proxy
		_deps_proxy_special
		_deps_serial

		_deps_fw
		
		_deps_clog
		
		_deps_stopwatch
		
		_deps_linux
		
		#_deps_disc
		
		_deps_build
		
		_deps_build_bash
		#_deps_build_bash_ubiquitous
		
		return 0
	fi
}


#Default is to include all, or run a specified configuration. For this reason, it will be more typical to override this entire function, rather than append any additional code.
# WARNING Find current version of this function at "build/bash/compile_bash.sh"
# _compile_bash_deps() {
# 	[[ "$1" == "lean" ]] && return 0
# 	
# 	false
# }

_vars_compile_bash_prog() {
	#export configDir="$scriptAbsoluteFolder"/_config
	
	#export progDir="$scriptAbsoluteFolder"/_prog
	#export progScript="$scriptAbsoluteFolder"/ubiquitous_bash.sh
	#[[ "$1" != "" ]] && export progScript="$scriptAbsoluteFolder"/"$1"
	
	true
}

_compile_bash_header_prog() {	
	export includeScriptList
	true
}

_compile_bash_header_program_prog() {	
	export includeScriptList
	true
}

_compile_bash_essential_utilities_prog() {	
	export includeScriptList
	true
}

_compile_bash_utilities_virtualization_prog() {	
	export includeScriptList
	true
}

_compile_bash_utilities_prog() {	
	export includeScriptList
	true
}

_compile_bash_shortcuts_prog() {	
	export includeScriptList
	true
}

_compile_bash_shortcuts_setup_prog() {	
	export includeScriptList
	true
}

_compile_bash_bundled_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_basic_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_global_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_spec_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_shortcuts_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_virtualization_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_bundled_prog() {	
	export includeScriptList
	true
}

_compile_bash_buildin_prog() {	
	export includeScriptList
	true
}

_compile_bash_environment_prog() {	
	export includeScriptList
	true
}

_compile_bash_installation_prog() {	
	export includeScriptList
	true
}

_compile_bash_program_prog() {	
	export includeScriptList
	
	includeScriptList+=( core-foundational-models.sh )
	
	#includeScriptList+=( "stuff/"file.sh )
	
	true
}

_compile_bash_config_prog() {	
	export includeScriptList
	true
}

_compile_bash_selfHost_prog() {	
	export includeScriptList
	true
}

_compile_bash_overrides_prog() {	
	export includeScriptList
	true
}

_compile_bash_entry_prog() {	
	export includeScriptList
	true
}
