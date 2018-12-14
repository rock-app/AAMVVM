package ${escapeKotlinIdentifiers(packageName)}
<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel
</#if>  

/**
 * description: ${activityClass}
 <#if generateViewModel>
 * @see ${shortName}ViewModel
 </#if>
 *
 * @date ${.now?string("yyyy/MM/dd")}
 */

class ${activityClass} : BaseActivity<${activityClass}Binding>(){

	<#if generateViewModel>
	private val  mViewModel by lazy {getInjectViewModel<${shortName}ViewModel>()}
	</#if>

	override fun getLayoutId(): Int = R.layout.${layoutName}

    override fun initView() {
        <#if generateViewModel>
        mBinding.vm=mViewModel
        </#if>
    }

    override fun loadData(isRefresh: Boolean){}
}
