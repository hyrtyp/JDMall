.class public Lcom/jd/droidlib/inner/reader/BundleExtraReader;
.super Ljava/lang/Object;
.source "BundleExtraReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readVal(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "key"
    .parameter "optional"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 27
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, val:Ljava/lang/Object;
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 36
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bundle missing required key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #val:Ljava/lang/Object;
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/jd/droidlib/inner/reader/ValueReader;->isSupportAvaliable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-static {p0}, Lcom/jd/droidlib/inner/reader/SupportFragmentsReader;->isSupportObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p0}, Lcom/jd/droidlib/inner/reader/SupportFragmentsReader;->getFragmentArguments(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .restart local v0       #data:Landroid/os/Bundle;
    goto :goto_0

    .line 32
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    invoke-static {p0}, Lcom/jd/droidlib/inner/reader/NativeFragmentsReader;->getFragmentArguments(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .restart local v0       #data:Landroid/os/Bundle;
    goto :goto_0

    .line 38
    .end local p0
    .restart local v1       #val:Ljava/lang/Object;
    :cond_2
    return-object v1
.end method
