.class public Lcom/jingdong/app/mall/ime/JDKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "JDKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/ime/JDKeyboard$JDKey;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOKKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mQwertyShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mRes:Landroid/content/res/Resources;

.field private mSymbolShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mSymbolSwitchQwertyKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mRes:Landroid/content/res/Resources;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 0
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 38
    return-void
.end method

.method private drawTextAtBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "text"

    .prologue
    const/4 v9, 0x0

    const-wide/high16 v10, 0x4000

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 83
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 85
    .local v2, height:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 86
    .local v3, newbit:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .local v0, StringPaint:Landroid/graphics/Paint;
    invoke-virtual {v1, p1, v9, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v8, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f09001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget v8, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mTextSize:I

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v6, rect:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, p2, v8, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 96
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v8, v7, v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 98
    .local v4, paintX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v2

    int-to-double v8, v8

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 100
    .local v5, paintY:F
    invoke-virtual {v1, p2, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    const/16 v8, 0x1f

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-object v3
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 7
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 42
    new-instance v0, Lcom/jingdong/app/mall/ime/JDKeyboard$JDKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/ime/JDKeyboard$JDKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 43
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x66

    if-ne v1, v2, :cond_1

    .line 47
    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mSymbolShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 49
    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mSymbolSwitchQwertyKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 51
    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mOKKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 53
    iput-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mQwertyShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0
.end method

.method public drawTextToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .parameter "text"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020029

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/ime/JDKeyboard;->makeTheImageTransparent(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 150
    .local v4, transparentBitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v4, p1}, Lcom/jingdong/app/mall/ime/JDKeyboard;->drawTextAtBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, drawTextBm:Landroid/graphics/Bitmap;
    invoke-direct {p0, v4}, Lcom/jingdong/app/mall/ime/JDKeyboard;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v2

    .line 161
    .end local v0           #drawTextBm:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #transparentBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 159
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/ime/JDKeyboard;->drawTextToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public makeTheImageTransparent(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 69
    return-object p1
.end method

.method public setJDKeyIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/ime/JDKeyboard;->drawTextToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 120
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070419

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mOKKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 132
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 122
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070421

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070420

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mSymbolSwitchQwertyKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mSymbolShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setKeyBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mQwertyShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object p1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 184
    return-void
.end method

.method public setKeyTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 172
    iput p1, p0, Lcom/jingdong/app/mall/ime/JDKeyboard;->mTextSize:I

    .line 173
    return-void
.end method
