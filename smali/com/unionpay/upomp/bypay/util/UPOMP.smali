.class public Lcom/unionpay/upomp/bypay/util/UPOMP;
.super Ljava/lang/Object;


# static fields
.field public static payResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayResult()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v4, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->d:Z

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->b:I

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->c:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->q:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->c:Ljava/lang/Boolean;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->g:Ljava/lang/String;

    const-string v0, "config"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->j:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->w:Ljava/lang/String;

    const-string v0, "1.0.0"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->x:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->f:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->z:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->A:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->B:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->C:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->D:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->E:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->a:I

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->j:Z

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->F:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->G:Ljava/lang/String;

    const-string v0, "02-02-1.0.0"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->H:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->I:Ljava/lang/String;

    const-string v0, "3"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->J:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->K:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->L:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->M:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->N:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->P:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->Q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->U:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->W:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->X:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->Y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->Z:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aa:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ab:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ac:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ad:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ae:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->af:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ag:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ah:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ai:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->al:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aq:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->ar:Ljava/lang/String;

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->g:Z

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->au:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->av:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aC:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aD:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aF:Ljava/lang/String;

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->g:I

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->h:I

    sput v3, Lcom/unionpay/upomp/bypay/other/eh;->l:I

    sput v1, Lcom/unionpay/upomp/bypay/other/eh;->k:I

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->k:Z

    sput v4, Lcom/unionpay/upomp/bypay/other/eh;->f:I

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->b:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->c:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->d:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->e:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->f:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->g:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->h:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->i:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->j:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->k:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aH:Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->l:[Ljava/lang/String;

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->m:[Ljava/lang/String;

    return-void
.end method
