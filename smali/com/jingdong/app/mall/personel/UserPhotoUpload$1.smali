.class Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;
.super Ljava/lang/Object;
.source "UserPhotoUpload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/UserPhotoUpload;->ShowPickDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/UserPhotoUpload;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->val$items:[Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$0(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 111
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    const v2, 0x7f070491

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getFromCamera()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    #getter for: Lcom/jingdong/app/mall/personel/UserPhotoUpload;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->access$1(Lcom/jingdong/app/mall/personel/UserPhotoUpload;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    const v2, 0x7f070492

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/UserPhotoUpload$1;->this$0:Lcom/jingdong/app/mall/personel/UserPhotoUpload;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getFromLocal()V

    goto :goto_0
.end method
