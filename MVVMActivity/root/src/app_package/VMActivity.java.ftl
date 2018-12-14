package ${packageName};

import ${superClassFqcn};
<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel;
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
    private ${shortName}ViewModel  mViewModel;
    </#if> 


    @Override 
    public int getLayoutId() {
    	return R.layout.${layoutName};
    }

    @Override 
    public void initView() {
        <#if generateViewModel>
        mViewModel = getInjectViewModel<${shortName}ViewModel>();
        mBinding.setVm(mViewModel);
        </#if>
    }

    @Override
    public void loadData(boolean isRefresh){}

}

