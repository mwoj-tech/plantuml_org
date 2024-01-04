<ul>
<#list features as feature>
  <li><h2>${feature.type.title}</h2>
  <ul>
  <#list feature.attributes as attribute>
    <#if !attribute.isGeometry>
      <li>${attribute.name?replace("_", " ", "i")?cap_first}: 
        <#if attribute.value?starts_with('http')>
          <a href="${attribute.value}">${attribute.value}</a>
        <#else>
         ${attribute.value}
        </#if>
      </li>
    </#if>
  </#list>
  </ul>
  <#if feature['json_data']?has_content>
    <table>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        <#list feature['json_data'].?keys as key>
            <tr>
                <td>${key}</td>
                <td>${feature['json_data'][key]}</td>
            </tr>
        </#list>
    </table>
  </#if>
  </li>
</#list>
</ul>
