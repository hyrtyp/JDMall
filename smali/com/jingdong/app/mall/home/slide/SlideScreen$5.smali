.class Lcom/jingdong/app/mall/home/slide/SlideScreen$5;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "SlideScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->loadHdTitleView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

.field private final synthetic val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

.field private final synthetic val$tips:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;JLandroid/widget/TextView;Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;)V
    .locals 10
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"
    .parameter "$anonymous6"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$tips:Landroid/widget/TextView;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 254
    invoke-direct/range {v1 .. v9}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$5;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->showItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 307
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    const v3, 0x7f0300e9

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "imageurl"

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string v2, "jdPrice"

    aput-object v2, v4, v1

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 308
    .local v0, simAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/home/slide/SlideScreen$ProductImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ProductImageProcessor;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ProductImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 309
    return-object v0

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x6at 0x1t 0xct 0x7ft
        0x6bt 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 259
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$tips:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$5;Landroid/widget/TextView;Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 273
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 303
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 4
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/HttpGroup$HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 280
    .local v1, hotsaleListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 284
    const-string v3, "hotSaleList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 285
    .local v0, hotsaleList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->showError()V

    .line 293
    .end local v0           #hotsaleList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    return-object v2

    .line 288
    .restart local v0       #hotsaleList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_1
    const/16 v3, 0x15

    invoke-static {v0, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 290
    goto :goto_0

    .line 291
    .end local v0           #hotsaleList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->showError()V

    goto :goto_0
.end method
