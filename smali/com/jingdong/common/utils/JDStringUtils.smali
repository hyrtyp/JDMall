.class public Lcom/jingdong/common/utils/JDStringUtils;
.super Ljava/lang/Object;
.source "JDStringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 9
    const-string v0, "FF0000"

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;ILjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorSpanned(Landroid/content/Context;ILjava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "color"

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .parameter "string"

    .prologue
    .line 16
    const-string v0, "FF0000"

    invoke-static {p0, v0}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "string"
    .parameter "color"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
