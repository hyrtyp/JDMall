package com.jd.common.ice;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.xml.BeanDefinitionParser;
import org.springframework.beans.factory.xml.ParserContext;
import org.springframework.util.Assert;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class IceProxyBeanDefinitionParser
  implements BeanDefinitionParser
{
  public BeanDefinition parse(Element paramElement, ParserContext paramParserContext)
  {
    NodeList localNodeList = paramElement.getChildNodes();
    int i = 0;
    int j = localNodeList.getLength();
    if (i >= j) {
      return null;
    }
    Node localNode = localNodeList.item(i);
    String str;
    if (localNode.getNodeType() == 1)
    {
      str = localNode.getLocalName();
      if (!"proxy".equals(str)) {
        break label83;
      }
      parseIceProxy((Element)localNode, paramParserContext);
    }
    for (;;)
    {
      i++;
      break;
      label83:
      if ("proxygrid".equals(str)) {
        parseIceGridProxy((Element)localNode, paramParserContext);
      }
    }
  }
  
  protected void parseIceGridProxy(Element paramElement, ParserContext paramParserContext)
  {
    String str1 = paramElement.getAttribute("id");
    Assert.notNull(str1, "missing id for proxy");
    NodeList localNodeList = paramElement.getChildNodes();
    BeanDefinitionBuilder localBeanDefinitionBuilder = BeanDefinitionBuilder.rootBeanDefinition(IceGridObjectPrxFactoryBean.class);
    localBeanDefinitionBuilder.addPropertyValue("id", str1);
    int i = 0;
    int j = localNodeList.getLength();
    if (i >= j)
    {
      paramParserContext.getRegistry().registerBeanDefinition(str1, localBeanDefinitionBuilder.getBeanDefinition());
      return;
    }
    Node localNode = localNodeList.item(i);
    String str2;
    if (localNode.getNodeType() == 1)
    {
      str2 = localNode.getLocalName();
      if (!"prxClass".equals(str2)) {
        break label139;
      }
      localBeanDefinitionBuilder.addPropertyValue("prxClass", localNode.getTextContent().trim());
    }
    for (;;)
    {
      i++;
      break;
      label139:
      if ("propertyName".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("propertyName", localNode.getTextContent().trim());
      } else if ("configFile".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("configFile", localNode.getTextContent().trim());
      } else if ("tokenName".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("tokenName", localNode.getTextContent().trim());
      } else if ("token".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("token", localNode.getTextContent().trim());
      }
    }
  }
  
  protected void parseIceProxy(Element paramElement, ParserContext paramParserContext)
  {
    String str1 = paramElement.getAttribute("id");
    Assert.notNull(str1, "missing id for proxy");
    NodeList localNodeList = paramElement.getChildNodes();
    BeanDefinitionBuilder localBeanDefinitionBuilder = BeanDefinitionBuilder.rootBeanDefinition(IceObjectPrxFactoryBean.class);
    localBeanDefinitionBuilder.addPropertyValue("id", str1);
    int i = 0;
    int j = localNodeList.getLength();
    if (i >= j)
    {
      paramParserContext.getRegistry().registerBeanDefinition(str1, localBeanDefinitionBuilder.getBeanDefinition());
      return;
    }
    Node localNode = localNodeList.item(i);
    String str2;
    if (localNode.getNodeType() == 1)
    {
      str2 = localNode.getLocalName();
      if (!"prxClass".equals(str2)) {
        break label139;
      }
      localBeanDefinitionBuilder.addPropertyValue("prxClass", localNode.getTextContent().trim());
    }
    for (;;)
    {
      i++;
      break;
      label139:
      if ("url".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("url", localNode.getTextContent().trim());
      } else if ("tokenName".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("tokenName", localNode.getTextContent().trim());
      } else if ("token".equals(str2)) {
        localBeanDefinitionBuilder.addPropertyValue("token", localNode.getTextContent().trim());
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.ice.IceProxyBeanDefinitionParser
 * JD-Core Version:    0.7.0.1
 */