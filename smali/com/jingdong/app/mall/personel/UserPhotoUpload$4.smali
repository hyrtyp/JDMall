.class Lcom/jingdong/app/mall/personel/UserPhotoUpload$4;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/UserPhotoUpload;->showAlertDialogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$4;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 313
    return-void
.end method
