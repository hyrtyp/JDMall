.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;->this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 423
    return-void
.end method
