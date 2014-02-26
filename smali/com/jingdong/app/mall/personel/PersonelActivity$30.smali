.class Lcom/jingdong/app/mall/personel/PersonelActivity$30;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->loginError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->val$tip:Ljava/lang/String;

    .line 2593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2597
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2598
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2599
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->val$tip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2600
    const v1, 0x7f07020a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2604
    :goto_0
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$30$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$30$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$30;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2613
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$30;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2630
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 2602
    .restart local v0       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2624
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
