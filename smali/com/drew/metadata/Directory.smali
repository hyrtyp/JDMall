.class public abstract Lcom/drew/metadata/Directory;
.super Ljava/lang/Object;
.source "Directory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final _definedTagList:Ljava/util/List;

.field protected _descriptor:Lcom/drew/metadata/TagDescriptor;

.field private _errorList:Ljava/util/List;

.field protected final _tagMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public containsTag(I)Z
    .locals 2
    .parameter "tagType"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 7
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 532
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 533
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not been set -- check using containsTag() first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 535
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 543
    :goto_0
    return v3

    .line 536
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 538
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to parse string "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a boolean"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 542
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 543
    check-cast v2, Ljava/lang/Number;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 545
    .restart local v2       #o:Ljava/lang/Object;
    :cond_4
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be cast to a boolean.  It is of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getByteArray(I)[B
    .locals 9
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 437
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 438
    new-instance v6, Lcom/drew/metadata/MetadataException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Tag "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has not been set -- check using containsTag() first"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    :cond_0
    instance-of v6, v3, [Lcom/drew/lang/Rational;

    if-eqz v6, :cond_3

    move-object v4, v3

    .line 440
    check-cast v4, [Lcom/drew/lang/Rational;

    .line 441
    .local v4, rationals:[Lcom/drew/lang/Rational;
    array-length v6, v4

    new-array v0, v6, [B

    .line 442
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-lt v1, v6, :cond_2

    .line 461
    .end local v0           #bytes:[B
    .end local v1           #i:I
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #rationals:[Lcom/drew/lang/Rational;
    :cond_1
    :goto_1
    return-object v0

    .line 443
    .restart local v0       #bytes:[B
    .restart local v1       #i:I
    .restart local v3       #o:Ljava/lang/Object;
    .restart local v4       #rationals:[Lcom/drew/lang/Rational;
    :cond_2
    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->byteValue()B

    move-result v6

    aput-byte v6, v0, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v0           #bytes:[B
    .end local v1           #i:I
    .end local v4           #rationals:[Lcom/drew/lang/Rational;
    :cond_3
    instance-of v6, v3, [B

    if-eqz v6, :cond_4

    .line 447
    check-cast v3, [B

    .end local v3           #o:Ljava/lang/Object;
    move-object v0, v3

    goto :goto_1

    .line 448
    .restart local v3       #o:Ljava/lang/Object;
    :cond_4
    instance-of v6, v3, [I

    if-eqz v6, :cond_5

    move-object v2, v3

    .line 449
    check-cast v2, [I

    .line 450
    .local v2, ints:[I
    array-length v6, v2

    new-array v0, v6, [B

    .line 451
    .restart local v0       #bytes:[B
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 452
    aget v6, v2, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 455
    .end local v0           #bytes:[B
    .end local v1           #i:I
    .end local v2           #ints:[I
    :cond_5
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v5, v3

    .line 456
    check-cast v5, Ljava/lang/String;

    .line 457
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    new-array v0, v6, [B

    .line 458
    .restart local v0       #bytes:[B
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 459
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 463
    .end local v0           #bytes:[B
    .end local v1           #i:I
    .end local v5           #str:Ljava/lang/String;
    :cond_6
    new-instance v6, Lcom/drew/metadata/MetadataException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Tag \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' cannot be cast to a byte array.  It is of type \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 8
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 554
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 555
    new-instance v5, Lcom/drew/metadata/MetadataException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tag "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has not been set -- check using containsTag() first"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 556
    :cond_0
    instance-of v5, v3, Ljava/util/Date;

    if-eqz v5, :cond_1

    .line 557
    check-cast v3, Ljava/util/Date;

    .line 571
    .end local v3           #o:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 558
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 562
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 563
    const-string v6, "yyyy:MM:dd HH:mm:ss"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    .line 564
    const-string v6, "yyyy:MM:dd HH:mm"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    .line 565
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    .line 566
    const-string v6, "yyyy-MM-dd HH:mm"

    aput-object v6, v0, v5

    .local v0, datePatterns:[Ljava/lang/String;
    move-object v1, v3

    .line 567
    check-cast v1, Ljava/lang/String;

    .line 568
    .local v1, dateString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_3

    .line 577
    .end local v0           #datePatterns:[Ljava/lang/String;
    .end local v1           #dateString:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    new-instance v5, Lcom/drew/metadata/MetadataException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tag \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' cannot be cast to a java.util.Date.  It is of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 570
    .restart local v0       #datePatterns:[Ljava/lang/String;
    .restart local v1       #dateString:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_3
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 571
    .local v4, parser:Ljava/text/DateFormat;
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 572
    .end local v4           #parser:Ljava/text/DateFormat;
    :catch_0
    move-exception v5

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Lcom/drew/metadata/MetadataException;

    const-string v1, "a descriptor must be set using setDescriptor(...) before descriptions can be provided"

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 6
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 472
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 473
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not been set -- check using containsTag() first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 476
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 481
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-wide v3

    .line 477
    .restart local v2       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 478
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to parse string "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a double"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 480
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 481
    check-cast v2, Ljava/lang/Number;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    .line 483
    .restart local v2       #o:Ljava/lang/Object;
    :cond_2
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be cast to a double.  It is of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrors()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 6
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 492
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 493
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not been set -- check using containsTag() first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 496
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 501
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return v3

    .line 497
    .restart local v2       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 498
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to parse string "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a float"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 500
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 501
    check-cast v2, Ljava/lang/Number;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_0

    .line 503
    .restart local v2       #o:Ljava/lang/Object;
    :cond_2
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be cast to a float.  It is of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInt(I)I
    .locals 13
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 306
    .local v5, o:Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 307
    new-instance v10, Lcom/drew/metadata/MetadataException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Tag "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has not been set -- check using containsTag() first"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 308
    :cond_0
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 310
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 335
    .end local v5           #o:Ljava/lang/Object;
    :goto_0
    return v10

    .line 311
    .restart local v5       #o:Ljava/lang/Object;
    :catch_0
    move-exception v4

    .local v4, nfe:Ljava/lang/NumberFormatException;
    move-object v7, v5

    .line 313
    check-cast v7, Ljava/lang/String;

    .line 314
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 315
    .local v1, bytes:[B
    const-wide/16 v8, 0x0

    .line 316
    .local v8, val:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, v1

    if-lt v2, v10, :cond_1

    .line 320
    long-to-int v10, v8

    goto :goto_0

    .line 317
    :cond_1
    const/16 v10, 0x8

    shl-long/2addr v8, v10

    .line 318
    aget-byte v10, v1, v2

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    .end local v1           #bytes:[B
    .end local v2           #i:I
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #val:J
    :cond_2
    instance-of v10, v5, Ljava/lang/Number;

    if-eqz v10, :cond_3

    .line 323
    check-cast v5, Ljava/lang/Number;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v10

    goto :goto_0

    .line 324
    .restart local v5       #o:Ljava/lang/Object;
    :cond_3
    instance-of v10, v5, [Lcom/drew/lang/Rational;

    if-eqz v10, :cond_4

    move-object v6, v5

    .line 325
    check-cast v6, [Lcom/drew/lang/Rational;

    .line 326
    .local v6, rationals:[Lcom/drew/lang/Rational;
    array-length v10, v6

    if-ne v10, v12, :cond_6

    .line 327
    aget-object v10, v6, v11

    invoke-virtual {v10}, Lcom/drew/lang/Rational;->intValue()I

    move-result v10

    goto :goto_0

    .line 328
    .end local v6           #rationals:[Lcom/drew/lang/Rational;
    :cond_4
    instance-of v10, v5, [B

    if-eqz v10, :cond_5

    move-object v1, v5

    .line 329
    check-cast v1, [B

    .line 330
    .restart local v1       #bytes:[B
    array-length v10, v1

    if-ne v10, v12, :cond_6

    .line 331
    aget-byte v10, v1, v11

    goto :goto_0

    .line 332
    .end local v1           #bytes:[B
    :cond_5
    instance-of v10, v5, [I

    if-eqz v10, :cond_6

    move-object v3, v5

    .line 333
    check-cast v3, [I

    .line 334
    .local v3, ints:[I
    array-length v10, v3

    if-ne v10, v12, :cond_6

    .line 335
    aget v10, v3, v11

    goto :goto_0

    .line 337
    .end local v3           #ints:[I
    :cond_6
    new-instance v10, Lcom/drew/metadata/MetadataException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Tag \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' cannot be cast to int.  It is of type \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public getIntArray(I)[I
    .locals 10
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 396
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 397
    new-instance v7, Lcom/drew/metadata/MetadataException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tag "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has not been set -- check using containsTag() first"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 398
    :cond_0
    instance-of v7, v4, [Lcom/drew/lang/Rational;

    if-eqz v7, :cond_3

    move-object v5, v4

    .line 399
    check-cast v5, [Lcom/drew/lang/Rational;

    .line 400
    .local v5, rationals:[Lcom/drew/lang/Rational;
    array-length v7, v5

    new-array v3, v7, [I

    .line 401
    .local v3, ints:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v3

    if-lt v2, v7, :cond_2

    .line 421
    .end local v2           #i:I
    .end local v3           #ints:[I
    .end local v4           #o:Ljava/lang/Object;
    .end local v5           #rationals:[Lcom/drew/lang/Rational;
    :cond_1
    :goto_1
    return-object v3

    .line 402
    .restart local v2       #i:I
    .restart local v3       #ints:[I
    .restart local v4       #o:Ljava/lang/Object;
    .restart local v5       #rationals:[Lcom/drew/lang/Rational;
    :cond_2
    aget-object v7, v5, v2

    invoke-virtual {v7}, Lcom/drew/lang/Rational;->intValue()I

    move-result v7

    aput v7, v3, v2

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v2           #i:I
    .end local v3           #ints:[I
    .end local v5           #rationals:[Lcom/drew/lang/Rational;
    :cond_3
    instance-of v7, v4, [I

    if-eqz v7, :cond_4

    .line 406
    check-cast v4, [I

    .end local v4           #o:Ljava/lang/Object;
    move-object v3, v4

    goto :goto_1

    .line 407
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4
    instance-of v7, v4, [B

    if-eqz v7, :cond_5

    move-object v1, v4

    .line 408
    check-cast v1, [B

    .line 409
    .local v1, bytes:[B
    array-length v7, v1

    new-array v3, v7, [I

    .line 410
    .restart local v3       #ints:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 411
    aget-byte v0, v1, v2

    .line 412
    .local v0, b:B
    aput v0, v3, v2

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 415
    .end local v0           #b:B
    .end local v1           #bytes:[B
    .end local v2           #i:I
    .end local v3           #ints:[I
    :cond_5
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 416
    check-cast v6, Ljava/lang/String;

    .line 417
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    new-array v3, v7, [I

    .line 418
    .restart local v3       #ints:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 419
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput v7, v3, v2

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 423
    .end local v2           #i:I
    .end local v3           #ints:[I
    .end local v6           #str:Ljava/lang/String;
    :cond_6
    new-instance v7, Lcom/drew/metadata/MetadataException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tag \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' cannot be cast to an int array.  It is of type \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getLong(I)J
    .locals 6
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 512
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 513
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not been set -- check using containsTag() first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 516
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 521
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-wide v3

    .line 517
    .restart local v2       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 518
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to parse string "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 520
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 521
    check-cast v2, Ljava/lang/Number;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 523
    .restart local v2       #o:Ljava/lang/Object;
    :cond_2
    new-instance v3, Lcom/drew/metadata/MetadataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tag \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be cast to a long.  It is of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .parameter "tagType"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRational(I)Lcom/drew/lang/Rational;
    .locals 4
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 586
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 587
    new-instance v1, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been set -- check using containsTag() first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_0
    instance-of v1, v0, Lcom/drew/lang/Rational;

    if-eqz v1, :cond_1

    .line 589
    check-cast v0, Lcom/drew/lang/Rational;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 591
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be cast to a Rational.  It is of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRationalArray(I)[Lcom/drew/lang/Rational;
    .locals 4
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 597
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 598
    new-instance v1, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been set -- check using containsTag() first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_0
    instance-of v1, v0, [Lcom/drew/lang/Rational;

    if-eqz v1, :cond_1

    .line 600
    check-cast v0, [Lcom/drew/lang/Rational;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 602
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be cast to a Rational array.  It is of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "tagType"

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 614
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 615
    const/4 v5, 0x0

    .line 639
    .end local v3           #o:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 617
    .restart local v3       #o:Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Lcom/drew/lang/Rational;

    if-eqz v5, :cond_1

    .line 618
    check-cast v3, Lcom/drew/lang/Rational;

    .end local v3           #o:Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 620
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 623
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 625
    .local v0, arrayLength:I
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "class [L"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 626
    .local v2, isObjectArray:Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 627
    .local v4, sbuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 636
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 629
    :cond_2
    if-eqz v1, :cond_3

    .line 630
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 631
    :cond_3
    if-eqz v2, :cond_4

    .line 632
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 634
    :cond_4
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 639
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #isObjectArray:Z
    .end local v4           #sbuffer:Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 9
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 353
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 354
    new-instance v6, Lcom/drew/metadata/MetadataException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Tag "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has not been set -- check using containsTag() first"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 355
    :cond_0
    instance-of v6, v3, [Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 356
    check-cast v3, [Ljava/lang/String;

    .end local v3           #o:Ljava/lang/Object;
    move-object v5, v3

    .line 380
    :cond_1
    :goto_0
    return-object v5

    .line 357
    .restart local v3       #o:Ljava/lang/Object;
    :cond_2
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 358
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    .end local v3           #o:Ljava/lang/Object;
    aput-object v3, v5, v7

    .line 359
    .local v5, strings:[Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v5           #strings:[Ljava/lang/String;
    .restart local v3       #o:Ljava/lang/Object;
    :cond_3
    instance-of v6, v3, [I

    if-eqz v6, :cond_4

    move-object v2, v3

    .line 361
    check-cast v2, [I

    .line 362
    .local v2, ints:[I
    array-length v6, v2

    new-array v5, v6, [Ljava/lang/String;

    .line 363
    .restart local v5       #strings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 364
    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    .end local v1           #i:I
    .end local v2           #ints:[I
    .end local v5           #strings:[Ljava/lang/String;
    :cond_4
    instance-of v6, v3, [B

    if-eqz v6, :cond_5

    move-object v0, v3

    .line 368
    check-cast v0, [B

    .line 369
    .local v0, bytes:[B
    array-length v6, v0

    new-array v5, v6, [Ljava/lang/String;

    .line 370
    .restart local v5       #strings:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 371
    aget-byte v6, v0, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    .end local v0           #bytes:[B
    .end local v1           #i:I
    .end local v5           #strings:[Ljava/lang/String;
    :cond_5
    instance-of v6, v3, [Lcom/drew/lang/Rational;

    if-eqz v6, :cond_6

    move-object v4, v3

    .line 375
    check-cast v4, [Lcom/drew/lang/Rational;

    .line 376
    .local v4, rationals:[Lcom/drew/lang/Rational;
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/String;

    .line 377
    .restart local v5       #strings:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 378
    aget-object v6, v4, v1

    invoke-virtual {v6, v7}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 382
    .end local v1           #i:I
    .end local v4           #rationals:[Lcom/drew/lang/Rational;
    .end local v5           #strings:[Ljava/lang/String;
    :cond_6
    new-instance v6, Lcom/drew/metadata/MetadataException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Tag \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' cannot be cast to an String array.  It is of type \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 5
    .parameter "tagType"

    .prologue
    .line 661
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 662
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getTagNameMap()Ljava/util/HashMap;

    move-result-object v2

    .line 663
    .local v2, nameMap:Ljava/util/HashMap;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, hex:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown tag (0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 670
    .end local v0           #hex:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 666
    .restart local v0       #hex:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 670
    .end local v0           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1
.end method

.method protected abstract getTagNameMap()Ljava/util/HashMap;
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoolean(IZ)V
    .locals 1
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method public setByteArray(I[B)V
    .locals 0
    .parameter "tagType"
    .parameter "bytes"

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method public setDate(ILjava/util/Date;)V
    .locals 0
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public setDescriptor(Lcom/drew/metadata/TagDescriptor;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set a null descriptor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    .line 119
    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public setIntArray(I[I)V
    .locals 0
    .parameter "tagType"
    .parameter "ints"

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 3
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cannot set a null object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 280
    .local v0, key:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/List;

    new-instance v2, Lcom/drew/metadata/Tag;

    invoke-direct {v2, p1, p0}, Lcom/drew/metadata/Tag;-><init>(ILcom/drew/metadata/Directory;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public setObjectArray(ILjava/lang/Object;)V
    .locals 0
    .parameter "tagType"
    .parameter "array"

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 296
    return-void
.end method

.method public setRational(ILcom/drew/lang/Rational;)V
    .locals 0
    .parameter "tagType"
    .parameter "rational"

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 224
    return-void
.end method

.method public setRationalArray(I[Lcom/drew/lang/Rational;)V
    .locals 0
    .parameter "tagType"
    .parameter "rationals"

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .parameter "tagType"
    .parameter "value"

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public setStringArray(I[Ljava/lang/String;)V
    .locals 0
    .parameter "tagType"
    .parameter "strings"

    .prologue
    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 264
    return-void
.end method
