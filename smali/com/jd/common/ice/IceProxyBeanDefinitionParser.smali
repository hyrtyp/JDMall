.class public Lcom/jd/common/ice/IceProxyBeanDefinitionParser;
.super Ljava/lang/Object;
.source "IceProxyBeanDefinitionParser.java"

# interfaces
.implements Lorg/springframework/beans/factory/xml/BeanDefinitionParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;)Lorg/springframework/beans/factory/config/BeanDefinition;
    .locals 7
    .parameter "element"
    .parameter "parserContext"

    .prologue
    .line 20
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 21
    .local v4, nodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 22
    .local v3, node:Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .local v1, len:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 34
    const/4 v5, 0x0

    return-object v5

    .line 23
    :cond_0
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 25
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, name:Ljava/lang/String;
    const-string v5, "proxy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 27
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v5, p2}, Lcom/jd/common/ice/IceProxyBeanDefinitionParser;->parseIceProxy(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;)V

    .line 22
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    const-string v5, "proxygrid"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 30
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v5, p2}, Lcom/jd/common/ice/IceProxyBeanDefinitionParser;->parseIceGridProxy(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;)V

    goto :goto_1
.end method

.method protected parseIceGridProxy(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;)V
    .locals 9
    .parameter "element"
    .parameter "parserContext"

    .prologue
    .line 64
    const-string v7, "id"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, id:Ljava/lang/String;
    const-string v7, "missing id for proxy"

    invoke-static {v1, v7}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 67
    .local v6, nodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 68
    .local v5, node:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 69
    .local v4, name:Ljava/lang/String;
    const-class v7, Lcom/jd/common/ice/IceGridObjectPrxFactoryBean;

    invoke-static {v7}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->rootBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    .line 70
    .local v0, definition:Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    const-string v7, "id"

    invoke-virtual {v0, v7, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 71
    const/4 v2, 0x0

    .local v2, j:I
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, len:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 91
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v7

    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;->registerBeanDefinition(Ljava/lang/String;Lorg/springframework/beans/factory/config/BeanDefinition;)V

    .line 92
    return-void

    .line 72
    :cond_0
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 73
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string v7, "prxClass"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    const-string v7, "prxClass"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 71
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_2
    const-string v7, "propertyName"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    const-string v7, "propertyName"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1

    .line 80
    :cond_3
    const-string v7, "configFile"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    const-string v7, "configFile"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1

    .line 83
    :cond_4
    const-string v7, "tokenName"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 84
    const-string v7, "tokenName"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1

    .line 86
    :cond_5
    const-string v7, "token"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    const-string v7, "token"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1
.end method

.method protected parseIceProxy(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;)V
    .locals 9
    .parameter "element"
    .parameter "parserContext"

    .prologue
    .line 37
    const-string v7, "id"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, id:Ljava/lang/String;
    const-string v7, "missing id for proxy"

    invoke-static {v1, v7}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 40
    .local v6, nodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 41
    .local v5, node:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 42
    .local v4, name:Ljava/lang/String;
    const-class v7, Lcom/jd/common/ice/IceObjectPrxFactoryBean;

    invoke-static {v7}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->rootBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    .line 43
    .local v0, definition:Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    const-string v7, "id"

    invoke-virtual {v0, v7, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 44
    const/4 v2, 0x0

    .local v2, j:I
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, len:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 61
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v7

    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;->registerBeanDefinition(Ljava/lang/String;Lorg/springframework/beans/factory/config/BeanDefinition;)V

    .line 62
    return-void

    .line 45
    :cond_0
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 46
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v7, "prxClass"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 48
    const-string v7, "prxClass"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_2
    const-string v7, "url"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 51
    const-string v7, "url"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1

    .line 53
    :cond_3
    const-string v7, "tokenName"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    const-string v7, "tokenName"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1

    .line 56
    :cond_4
    const-string v7, "token"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    const-string v7, "token"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_1
.end method
