.class Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$6;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 327
    return-void
.end method
