.class Lcom/jingdong/app/mall/MainFrameActivity$14;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->showHintDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$14;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainFrameActivity$14;->val$alertDialog:Landroid/app/AlertDialog;

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$14;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1381
    return-void
.end method
