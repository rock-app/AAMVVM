package ${escapeKotlinIdentifiers(packageName)}
<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel
</#if> 

/**
 * description: ${fragmentClass}
 <#if generateViewModel>
 * @see ${shortName}ViewModel
 </#if>
 * @date ${.now?string("yyyy/MM/dd")}
 */
class ${fragmentClass} : BaseFragment<${fragmentClass}Binding>(){

	<#if generateViewModel>
	private val  mViewModel by lazy {getInjectViewModel<${shortName}ViewModel>()}
	</#if>

	override fun getLayoutId(): Int = R.layout.${layoutName}

    override fun initView() {
         <#if generateViewModel>
        mBinding.vm=mViewModel
        </#if>
    }
}
