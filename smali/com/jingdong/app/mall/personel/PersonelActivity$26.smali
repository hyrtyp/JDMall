.class Lcom/jingdong/app/mall/personel/PersonelActivity$26;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->optionsViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;->val$visibility:I

    .line 2406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->tipOnlineServerImagetView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$63(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->tipOnlineServerImagetView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$63(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$26;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2413
    :cond_0
    return-void
.end method
