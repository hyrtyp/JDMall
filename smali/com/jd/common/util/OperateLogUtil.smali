.class public Lcom/jd/common/util/OperateLogUtil;
.super Ljava/lang/Object;
.source "OperateLogUtil.java"


# static fields
.field private static testXml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\"?><history><class name=\"DeliveryFeeContract\"><record id=\"46\"><field name=\"chargeType\"><changed>N</changed><oldvalue>2</oldvalue><newvalue>2</newvalue></field><field name=\"signoffFee\"><changed>N</changed><oldvalue>666.00</oldvalue><newvalue>666.00</newvalue></field><field name=\"signoffWeight\"><changed>Y</changed><oldvalue>777.0</oldvalue><newvalue>665.0</newvalue></field><field name=\"signoffFeeHigh\"><changed>N</changed><oldvalue>888.00</oldvalue><newvalue>888.00</newvalue></field><field name=\"rejectFee\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"rejectWeight\"><changed>N</changed><oldvalue>1.0</oldvalue><newvalue>1.0</newvalue></field><field name=\"rejectFeeHigh\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"returnFee\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field><field name=\"returnWeight\"><changed>N</changed><oldvalue>1.0</oldvalue><newvalue>1.0</newvalue></field><field name=\"returnFeeHigh\"><changed>N</changed><oldvalue>1.00</oldvalue><newvalue>1.00</newvalue></field></record><record id=\"47\"><field name=\"chargeType\"><changed>N</changed><oldvalue>1</oldvalue><newvalue>1</newvalue></field><field name=\"signoffFee\"><changed>N</changed><oldvalue>888.00</oldvalue><newvalue>888.00</newvalue></field><field name=\"signoffWeight\"><changed>Y</changed><oldvalue>777.0</oldvalue><newvalue>776.0</newvalue></field><field name=\"signoffFeeHigh\"><changed>N</changed><oldvalue>88.00</oldvalue><newvalue>88.00</newvalue></field><field name=\"rejectFee\"><changed>N</changed><oldvalue>3.00</oldvalue><newvalue>3.00</newvalue></field><field name=\"rejectWeight\"><changed>N</changed><oldvalue>3.0</oldvalue><newvalue>3.0</newvalue></field><field name=\"rejectFeeHigh\"><changed>N</changed><oldvalue>4.00</oldvalue><newvalue>4.00</newvalue></field><field name=\"returnFee\"><changed>N</changed><oldvalue>55.00</oldvalue><newvalue>55.00</newvalue></field><field name=\"returnWeight\"><changed>N</changed><oldvalue>5.0</oldvalue><newvalue>5.0</newvalue></field><field name=\"returnFeeHigh\"><changed>N</changed><oldvalue>5.00</oldvalue><newvalue>5.00</newvalue></field></record></class></history>"

    sput-object v0, Lcom/jd/common/util/OperateLogUtil;->testXml:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareObjects(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .parameter "o1"
    .parameter "o2"
    .parameter "filedNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 119
    :goto_1
    return v3

    .line 106
    :cond_0
    aget-object v0, v5, v4

    .line 107
    .local v0, fieldName:Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/apache/commons/beanutils/BeanUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, oldvalue:Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/BeanUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, newvalue:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 110
    const-string v2, ""

    .line 112
    :cond_1
    if-nez v1, :cond_2

    .line 113
    const-string v1, ""

    .line 115
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    const/4 v3, 0x1

    goto :goto_1

    .line 106
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static generateFieldXml(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "o1"
    .parameter "o2"
    .parameter "logIfEqual"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1, p0}, Lorg/apache/commons/beanutils/BeanUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, oldvalue:Ljava/lang/String;
    invoke-static {p2, p0}, Lorg/apache/commons/beanutils/BeanUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, newvalue:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 80
    const-string v2, ""

    .line 82
    :cond_0
    if-nez v1, :cond_1

    .line 83
    const-string v1, ""

    .line 85
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    .local v0, isEqual:Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v3, sb:Ljava/lang/StringBuffer;
    if-eqz v0, :cond_2

    if-nez p3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    .line 88
    :cond_3
    const-string v4, "<field name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v4, "<changed>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    if-eqz v0, :cond_5

    const-string v4, "N"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</changed>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v4, "<oldvalue>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</oldvalue>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v4, "<newvalue>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</newvalue>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v4, "</field>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 89
    :cond_5
    const-string v4, "Y"

    goto :goto_0
.end method

.method public static generateHistoryClassXml(Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "logIfEqual"
    .parameter "filedNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, objectListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<[Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jd/common/util/OperateLogUtil;->getXmlHead()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/jd/common/util/OperateLogUtil;->getXmlBottom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 31
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, key:Ljava/lang/String;
    const-string v7, "<class name=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 34
    .local v4, objectList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 39
    const-string v7, "</class>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 35
    .local v3, objectArr:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v1, v3, v8

    .line 36
    .local v1, o1:Ljava/lang/Object;
    const/4 v8, 0x1

    aget-object v2, v3, v8

    .line 37
    .local v2, o2:Ljava/lang/Object;
    invoke-static {v1, v2, p1, p2}, Lcom/jd/common/util/OperateLogUtil;->generateRecordXml(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static generateRecordXml(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "o1"
    .parameter "o2"
    .parameter "logIfEqual"
    .parameter "filedNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "<record id=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "id"

    invoke-static {p0, v4}, Lorg/apache/commons/beanutils/BeanUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 60
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, ","

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, fieldNameArr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 64
    const-string v3, "</record>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 62
    :cond_0
    aget-object v3, v0, v1

    invoke-static {v3, p0, p1, p2}, Lcom/jd/common/util/OperateLogUtil;->generateFieldXml(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getFieldInfoFromXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .parameter "xml"
    .parameter "className"
    .parameter "recordId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jd/common/util/LogFieldInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/common/util/LogFieldInfo;>;"
    new-instance v13, Lorg/dom4j/io/SAXReader;

    invoke-direct {v13}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 133
    .local v13, reader:Lorg/dom4j/io/SAXReader;
    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v3

    .line 134
    .local v3, document:Lorg/dom4j/Document;
    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 135
    .local v15, root:Lorg/dom4j/Element;
    invoke-interface {v15}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, classList:Ljava/util/List;,"Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 170
    :cond_1
    return-object v10

    .line 137
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Element;

    .line 138
    .local v4, e:Lorg/dom4j/Element;
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, _className:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 140
    invoke-interface {v4}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v14

    .line 141
    .local v14, recordList:Ljava/util/List;,"Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Element;

    .line 142
    .local v5, e2:Lorg/dom4j/Element;
    const-string v19, "id"

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, id:Ljava/lang/String;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 144
    :cond_4
    invoke-interface {v5}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v8

    .line 145
    .local v8, fieldList:Ljava/util/List;,"Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dom4j/Element;

    .line 146
    .local v6, e3:Lorg/dom4j/Element;
    new-instance v11, Lcom/jd/common/util/LogFieldInfo;

    invoke-direct {v11}, Lcom/jd/common/util/LogFieldInfo;-><init>()V

    .line 147
    .local v11, logFieldInfo:Lcom/jd/common/util/LogFieldInfo;
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/jd/common/util/LogFieldInfo;->setRecordId(Ljava/lang/Long;)V

    .line 148
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/jd/common/util/LogFieldInfo;->setFieldName(Ljava/lang/String;)V

    .line 149
    invoke-interface {v6}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v16

    .line 150
    .local v16, vList:Ljava/util/List;,"Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_6

    .line 163
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/dom4j/Element;

    .line 151
    .local v7, e4:Lorg/dom4j/Element;
    invoke-interface {v7}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, name:Ljava/lang/String;
    invoke-interface {v7}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, value:Ljava/lang/String;
    const-string v21, "changed"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 154
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/jd/common/util/LogFieldInfo;->setChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_7
    const-string v21, "oldvalue"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 157
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/jd/common/util/LogFieldInfo;->setOldvalue(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_8
    const-string v21, "newvalue"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/jd/common/util/LogFieldInfo;->setNewvalue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getXmlBottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "</history>"

    return-object v0
.end method

.method private static getXmlHead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\"?><history>"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 174
    :try_start_0
    sget-object v2, Lcom/jd/common/util/OperateLogUtil;->testXml:Ljava/lang/String;

    const-string v3, "DeliveryFeeContract"

    const-string v4, "47"

    invoke-static {v2, v3, v4}, Lcom/jd/common/util/OperateLogUtil;->getFieldInfoFromXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/common/util/LogFieldInfo;>;"
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/jd/common/util/LogFieldInfo;>;"
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
