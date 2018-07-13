package ${packageName};

import ${superClassFqcn};
<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel;
import javax.inject.Inject;
</#if>  
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.${activityClass}Binding;
import ${applicationPackage}.view.base.BaseActivity;
</#if>

/**
 * description: ${activityClass}
 <#if generateViewModel>
 * @see ${shortName}ViewModel
 </#if>
 *
 * @date ${.now?string("yyyy/MM/dd")}
 */

public class ${activityClass} extends BaseActivity<${activityClass}Binding>{

    <#if generateViewModel>
    @Inject
    public ${shortName}ViewModel  mViewModel;
    </#if>  

    @Override 
    public int getLayoutId() {
    	return R.layout.${layoutName};
    }

    @Override 
    public void initView() {
         <#if generateViewModel>
        getComponent().inject(this);
        mBinding.setVm(mViewModel);
        </#if>
    }


}

