$path = 'C:\Users\Training_h1b.06.16\Desktop\CHAITANYA_DEVOPS_P3\Original_xml.xml'
  
 $Tool = 'Docker'
  
 $xml = [xml](Get-Content $path)
  

      
 $node = $xml.DevOpsConfig.Details.DetailsType.Tool
 $node.Value = $Tool
   
 $xml.Save($path)
