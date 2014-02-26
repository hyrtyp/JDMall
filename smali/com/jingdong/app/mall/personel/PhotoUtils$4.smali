.class Lcom/jingdong/app/mall/personel/PhotoUtils$4;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PhotoUtils;->chooseUploadPhotoWay(Lcom/jingdong/app/mall/WebActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$items:[Ljava/lang/String;

.field private final synthetic val$webActivity:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$items:[Ljava/lang/String;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 275
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/personel/PhotoUtils;->startCamera(Lcom/jingdong/app/mall/WebActivity;)V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PhotoUtils;->access$0(Lcom/jingdong/app/mall/WebActivity;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    const v2, 0x7f070369

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$4;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    #calls: Lcom/jingdong/app/mall/personel/PhotoUtils;->loadFromLocal(Lcom/jingdong/app/mall/WebActivity;)V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PhotoUtils;->access$1(Lcom/jingdong/app/mall/WebActivity;)V

    goto :goto_0
.end method
