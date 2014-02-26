.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->showCustomDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;->val$alertDialog:Landroid/app/AlertDialog;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 700
    packed-switch p2, :pswitch_data_0

    .line 710
    :goto_0
    return-void

    .line 702
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
