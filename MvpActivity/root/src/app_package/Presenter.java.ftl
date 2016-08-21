package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.ui.base.Presenter;
</#if>

public class ${className}Presenter extends Presenter<${className}View> {
	
	public ${className}Presenter() {
	
	}

	public void init() {

	}
}