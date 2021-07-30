<#list nav_items as nav_item>

	<#assign 
		class_selected = ""
	/>

	<#if nav_item.isSelected()>
		<#assign 
			class_selected = "active"
		/>
	</#if>

	
	<#if nav_item.hasChildren()>
	<li class="dropdown">
		<a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${nav_item.getName()}<span class="caret"></span></a>
		
		<ul class="dropdown-menu">
			<#list nav_item.getChildren() as nav_child>

				<#assign 
					class_selected_child = ""
				/>

				<#if nav_child.isSelected()>
					<#assign 
						class_selected_child = "active"
					/>
				</#if>


				<li class="${class_selected_child}"><a href="${nav_child.getURL()}">${nav_child.getName()}</a></li>
			</#list>
		</ul>

	</li>
	<#else>
		<li class="${class_selected}" id="layout_${nav_item.getLayoutId()}">
			<a href="${nav_item.getURL()}">${nav_item.getName()}</a>
		</li>
	</#if>

</#list>

