.class public Lcom/jd/droidlib/inner/ConverterRegistry;
.super Ljava/lang/Object;
.source "ConverterRegistry.java"


# static fields
.field private static final converters:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->map:Ljava/util/HashMap;

    .line 50
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/BooleanConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/BooleanConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/ByteConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/ByteConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/CharacterConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/CharacterConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/DoubleConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/DoubleConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/FloatConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/FloatConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/IntegerConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/IntegerConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/LongConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/LongConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/ShortConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/ShortConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/StringConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/StringConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/EnumConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/EnumConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/DateConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/DateConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/UUIDConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/UUIDConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/UriConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/UriConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/ByteArrayConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/ByteArrayConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/JSONObjectConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/JSONObjectConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/BitmapConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/BitmapConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/ModelConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/ModelConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/EntityConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/EntityConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;

    invoke-direct {v1}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/jd/droidlib/inner/ConverterRegistry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/droidlib/inner/converter/Converter;

    .line 76
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<*>;"
    if-nez v0, :cond_1

    .line 77
    sget-object v2, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 86
    return-object v0

    .line 77
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/droidlib/inner/converter/Converter;

    .line 78
    .local v1, h:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<*>;"
    invoke-virtual {v1, p0}, Lcom/jd/droidlib/inner/converter/Converter;->canHandle(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    move-object v0, v1

    .line 80
    sget-object v2, Lcom/jd/droidlib/inner/ConverterRegistry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v1           #h:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<*>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No converter for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static registerConverter(Lcom/jd/droidlib/inner/converter/Converter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<*>;"
    sget-object v0, Lcom/jd/droidlib/inner/ConverterRegistry;->converters:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method
