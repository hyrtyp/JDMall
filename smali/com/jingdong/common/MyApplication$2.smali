.class Lcom/jingdong/common/MyApplication$2;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/MyApplication;->exitDialog(Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/MyApplication$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 278
    packed-switch p2, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/common/MyApplication$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-static {v0}, Lcom/jingdong/common/MyApplication;->exit(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
