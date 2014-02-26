.class Lcom/jingdong/app/mall/personel/PersonelActivity$39;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->logout(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$39;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$39;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$76(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/app/AlertDialog;)V

    .line 2838
    return-void
.end method
