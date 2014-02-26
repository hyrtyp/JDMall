.class Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments$3;->showDialog(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$3;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->alertDialog:Landroid/app/AlertDialog;

    .line 356
    return-void
.end method
