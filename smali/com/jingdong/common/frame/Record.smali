.class public Lcom/jingdong/common/frame/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private component:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/jingdong/common/frame/Record;

    .line 65
    .local v0, other:Lcom/jingdong/common/frame/Record;
    iget-object v3, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 66
    iget-object v3, v0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    iget-object v4, v0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jingdong/common/frame/Record;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/frame/Record;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, prime:I
    const/4 v1, 0x1

    .line 52
    .local v1, result:I
    iget-object v2, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 53
    return v1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jingdong/common/frame/Record;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jingdong/common/frame/Record;->intent:Landroid/content/Intent;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 42
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    .line 46
    .end local v0           #name:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Record [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/frame/Record;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/frame/Record;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/frame/Record;->component:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
