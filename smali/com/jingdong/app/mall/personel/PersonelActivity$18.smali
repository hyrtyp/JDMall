.class Lcom/jingdong/app/mall/personel/PersonelActivity$18;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setDefaultUserPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$img:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$18;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$18;->val$img:Landroid/graphics/drawable/LayerDrawable;

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$18;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$45(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$18;->val$img:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1857
    return-void
.end method
