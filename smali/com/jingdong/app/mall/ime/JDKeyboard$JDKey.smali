.class Lcom/jingdong/app/mall/ime/JDKeyboard$JDKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "JDKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/ime/JDKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JDKey"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 196
    return-void
.end method


# virtual methods
.method public isInside(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard$JDKey;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, -0xa

    .end local p2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v0

    return v0
.end method
